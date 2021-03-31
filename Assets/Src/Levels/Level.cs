using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using position;
using logic;
using state;
using piecetype;
using robot;
using cloner;

public abstract class Level : MonoBehaviour
{
    [System.Serializable]
    public struct PiecePrefab
    {
        public PieceType type;
        public GameObject prefab;
    }

    /* Controllable in Unity */
    public int xDim;
    public int yDim;
    public PiecePrefab[] piecePrefabs;
    public GameObject backgroundPrefab;
    public float pieceVelocity = 500;


    protected PieceType[,] board;
    protected Dictionary<PieceType, GameObject> piecePrefabDict;
    private GameObject[,] pieces;

    private Dictionary<GameObject, Movement> piecesMovement = new Dictionary<GameObject, Movement>();  // each piece's movement
    private bool moving = false;  // is any piece moving?

    private Logic logic;
    private Robot robot;

    // public Level(Mode mode) {
    //     this.levelMode = mode;
    // }

    protected void BuildBoard() 
    {
        this.logic = new Logic(new State(board, xDim, yDim));
        if (GameMode.mode == GameMode.Mode.AI) {
            this.robot = new Robot(new Logic(new State(board, xDim, yDim)));
            this.robot.InitStepByStep(this.robot.AStarManhattan());
        }
        else this.robot = null;

        // correspondance between PieceType and prefabs
        for (int i = 0; i < piecePrefabs.Length; i++)
        {
            if (!piecePrefabDict.ContainsKey(piecePrefabs[i].type))
            {
                piecePrefabDict.Add(piecePrefabs[i].type, piecePrefabs[i].prefab);
            }
        }

        // instantiating backgrounds
        for (int y = 0; y < yDim; y++)
        {
            for (int x = 0; x < xDim; x++)
            {
                GameObject background = (GameObject)Instantiate(backgroundPrefab, GetWorldPosition(x*90, ((yDim-1)-y)*90), Quaternion.identity, transform);
            }
        }

        foreach(KeyValuePair<PieceType, GameObject> entry in piecePrefabDict) Debug.Log(entry.Key);

        // Instantiating entities (obstacles, pieces, targets)
        pieces = new GameObject[yDim, xDim];

        for (int y = 0; y < yDim; y++)
        {
            for (int x = 0; x < xDim; x++)
            {
                if (board[y, x] == PieceType.EMPTY || IsPiece(board[y, x])) continue;
                InstantiateEntity(x, y, false);
            }
        }

        for (int y = 0; y < yDim; y++)
        {
            for (int x = 0; x < xDim; x++)
            {
                if (!IsPiece(board[y, x])) continue;
                InstantiateEntity(x, y, true);
            }
        }

        Debug.Log(pieces);
    }

    private void InstantiateEntity(int x, int y, bool isPiece)
    {
        pieces[y, x] = (GameObject) Instantiate(piecePrefabDict[board[y, x]], GetWorldPosition(x*90, ((yDim-1)-y)*90), Quaternion.identity, transform);
        pieces[y, x].name = "Piece(" + x + "," + y + ")";
        if (isPiece) piecesMovement.Add(pieces[y, x], new Movement(new Position(x, y)));
    }

    Vector3 GetWorldPosition(int x, int y)
    {
        return new Vector3(transform.position.x + x, transform.position.y + y, 0);
    }

    private bool IsPiece(PieceType type)
    {
        return type == PieceType.PIECE_PURPLE || type == PieceType.PIECE_ORANGE || type == PieceType.PIECE_RED;
    }

    protected void Update()
    {
        if (this.moving) // if moving
        {
            // there should be different target value for each piece
            bool movementGoesOn = false;  // whether the movement continues
            for (int y = 0; y < yDim; y++)
            {
                for (int x = 0; x < xDim; x++)
                {
                    if (IsPiece(board[y, x]))
                    {
                        GameObject piece = pieces[y, x];
                        Movement movement = piecesMovement[piece];

                        if (movement.type == Movement.MovementType.NONE) continue;   // if piece is not moving

                        float amount = this.pieceVelocity*Time.deltaTime;  // amount to move by

                        float diff = movement.target - movement.delta;
                        if (amount > diff) amount = diff;   // good math

                        Vector3 position = pieces[y, x].transform.position;
                        switch(movement.type) {
                            case Movement.MovementType.DOWN:
                                position.y -= amount;
                                break;
                            case Movement.MovementType.UP:
                                position.y += amount;
                                break;
                            case Movement.MovementType.RIGHT:
                                position.x += amount;
                                break;
                            case Movement.MovementType.LEFT:
                                position.x -= amount;
                                break;
                            default:
                                continue;
                        }

                        pieces[y, x].transform.position = position;

                        movementGoesOn = movement.Update(amount) ? true : movementGoesOn; // returns true if the piece's movement continues

                        // Debug.Log("Delta: "+ movement.delta + ", target: " + movement.target + ", goesOn: " + movementGoesOn);
                    }
                }
            }
            if (!movementGoesOn) this.moving = false;
        }
        else  // if not moving
        {
            Movement.MovementType movementType = Movement.MovementType.NONE;
            if (GameMode.mode == GameMode.Mode.HUMAN) {
                if (Input.GetKeyDown(KeyCode.RightArrow)) {
                    movementType = Movement.MovementType.RIGHT;
                } else if (Input.GetKeyDown(KeyCode.LeftArrow)) {
                    movementType = Movement.MovementType.LEFT;
                } else if (Input.GetKeyDown(KeyCode.UpArrow)) {
                    movementType = Movement.MovementType.UP;
                } else if (Input.GetKeyDown(KeyCode.DownArrow)) {
                    movementType = Movement.MovementType.DOWN;
                }
            } else if (GameMode.mode == GameMode.Mode.AI) {
                movementType = this.robot.GetNextStep();
            }


            if (movementType != Movement.MovementType.NONE) {
                Dictionary<Position, Position> prevNextPositions = logic.Move(movementType);
                if (prevNextPositions == null) return;

                for (int y = 0; y < yDim; y++)
                {
                    for (int x = 0; x < xDim; x++)
                    {
                        if (IsPiece(board[y, x]))
                        {
                            Movement movement = piecesMovement[pieces[y, x]];
                            Position nextPosition = prevNextPositions[movement.position];
                            // Debug.Log("Previous position: " + movement.position);
                            // Debug.Log("Next position: " + nextPosition);
                            if (nextPosition == null) continue;
                            // need to get the next position of the piece and calculate the amount to move
                            movement.StartMovement(nextPosition, movementType);
                        }
                    }
                }
                this.moving = true;
            }
        }
        
    }
}
