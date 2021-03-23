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

    public enum MovementType
    {
        NONE,
        RIGHT,
        LEFT,
        UP,
        DOWN
    }

    public PiecePrefab[] piecePrefabs;
    private GameObject[,] pieces;
    protected Dictionary<PieceType, GameObject> piecePrefabDict;
    public GameObject backgroundPrefab;
    public float pieceVelocity;
    protected struct Movement
    {
        public MovementType type;
        public float delta;

        public Movement(MovementType type = MovementType.NONE, float delta = 0)
        {
            this.type = type;
            this.delta = delta;
        }
    }

    private Movement movement = new Movement();

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
        if (this.movement.type != MovementType.NONE) 
        {
            float amount = this.pieceVelocity*Time.deltaTime;
            if (amount > 90 - this.movement.delta)
            {
                amount = 90 - this.movement.delta;
            }
            for (int x = 0; x < xDim; x++)
            {
                for (int y = 0; y < yDim; y++)
                {
                    if (IsPiece(board[x, y]))
                    {
                        Vector3 position = pieces[x, y].transform.position;
                        switch(this.movement.type) {
                            case MovementType.DOWN:
                                position.y -= amount;
                                break;
                            case MovementType.UP:
                                position.y += amount;
                                break;
                            case MovementType.RIGHT:
                                position.x += amount;
                                break;
                            case MovementType.LEFT:
                                position.x -= amount;
                                break;
                            default:
                                continue;
                        }
                        pieces[x, y].transform.position = position;
                    }
                }
            }
            this.movement.delta += amount;
            if ((int) this.movement.delta >= 90)
            {
                this.movement.type = MovementType.NONE;
                this.movement.delta = 0;
            }
        }
        else 
        {
            if (Input.GetKeyDown(KeyCode.RightArrow)) {
                this.movement.type = MovementType.RIGHT;
            } else if (Input.GetKeyDown(KeyCode.LeftArrow)) {
                this.movement.type = MovementType.LEFT;
            } else if (Input.GetKeyDown(KeyCode.UpArrow)) {
                this.movement.type = MovementType.UP;
            } else if (Input.GetKeyDown(KeyCode.DownArrow)) {
                this.movement.type = MovementType.DOWN;
            }
        }
        
    }
}
