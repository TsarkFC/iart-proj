using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Level : MonoBehaviour
{
    public enum PieceType
    {
        PIECE_PURPLE,
        TARGET_PURPLE,
        PIECE_ORANGE,
        TARGET_ORANGE,
        PIECE_RED,
        TARGET_RED,
        BARRIER,
        EMPTY
    }

    public int xDim;
    public int yDim;
    protected PieceType[,] board;

    [System.Serializable]
    public struct PiecePrefab
    {
        public PieceType type;
        public GameObject prefab;
    }

    public PiecePrefab[] piecePrefabs;
    private GameObject[,] pieces;
    protected Dictionary<PieceType, GameObject> piecePrefabDict;
    public GameObject backgroundPrefab;

    public float pieceVelocity;

    private Dictionary<GameObject, Movement> piecesMovement = new Dictionary<GameObject, Movement>();
    private bool moving = false;

    protected void BuildBoard() 
    {
        for (int i = 0; i < piecePrefabs.Length; i++)
        {
            if (!piecePrefabDict.ContainsKey(piecePrefabs[i].type))
            {
                piecePrefabDict.Add(piecePrefabs[i].type, piecePrefabs[i].prefab);
            }
        }


        for (int x = 0; x < xDim; x++)
        {
            for (int y = 0; y < yDim; y++)
            {
                GameObject background = (GameObject)Instantiate(backgroundPrefab, GetWorldPosition(y*90, ((xDim-1)-x)*90), Quaternion.identity, transform);
            }
        }

        foreach(KeyValuePair<PieceType, GameObject> entry in piecePrefabDict)
        {
            Debug.Log(entry.Key);
        }

        pieces = new GameObject[xDim, yDim];
        for (int x = 0; x < xDim; x++)
        {
            for (int y = 0; y < yDim; y++)
            {
                if (board[x, y] == PieceType.EMPTY) continue;
                pieces[x, y] = (GameObject) Instantiate(piecePrefabDict[board[x, y]], GetWorldPosition(y*90, ((xDim-1)-x)*90), Quaternion.identity, transform);
                piecesMovement.Add(pieces[x, y], new Movement());
                pieces[x, y].name = "Piece(" + x + "," + y + ")";
            }
        }

        Debug.Log(pieces);
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
        if (this.moving) 
        {
            // there should be different target value for each piece
            bool movementGoesOn = false;
            for (int x = 0; x < xDim; x++)
            {
                for (int y = 0; y < yDim; y++)
                {
                    if (IsPiece(board[x, y]))
                    {
                        GameObject piece = pieces[x, y];
                        Movement movement = piecesMovement[piece];

                        if (movement.type == Movement.MovementType.NONE) continue;   // if piece is not moving

                        float amount = this.pieceVelocity*Time.deltaTime;

                        float diff = movement.target - movement.delta;
                        if (amount > diff) amount = diff;

                        Vector3 position = pieces[x, y].transform.position;
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
                        pieces[x, y].transform.position = position;
                        movement.Increment(amount);
                        
                        if ((int) movement.delta >= movement.target)
                        {
                            movement.StopMovement();
                        } 
                        else
                        {
                            movementGoesOn = true;
                        }
                    }
                }
            }
            if (!movementGoesOn) this.moving = false;
        }
        else 
        {
            Movement.MovementType movementType = Movement.MovementType.NONE;
            if (Input.GetKeyDown(KeyCode.RightArrow)) {
                movementType = Movement.MovementType.RIGHT;
            } else if (Input.GetKeyDown(KeyCode.LeftArrow)) {
                movementType = Movement.MovementType.LEFT;
            } else if (Input.GetKeyDown(KeyCode.UpArrow)) {
                movementType = Movement.MovementType.UP;
            } else if (Input.GetKeyDown(KeyCode.DownArrow)) {
                movementType = Movement.MovementType.DOWN;
            }

            if (movementType != Movement.MovementType.NONE) {
                for (int x = 0; x < xDim; x++)
                {
                    for (int y = 0; y < yDim; y++)
                    {
                        if (IsPiece(board[x, y]))
                        {
                            piecesMovement[pieces[x, y]].StartMovement(movementType, 90);
                        }
                    }
                }
                this.moving = true;
            }
        }
        
    }
}
