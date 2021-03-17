using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Board : MonoBehaviour
{
    public enum PieceType
    {
        PIECE,
        TARGET,
        BARRIER,
        EMPTY
    }

    public int xDim;
    public int yDim;
    private PieceType[,] board = new PieceType[,] {{PieceType.BARRIER, PieceType.TARGET, PieceType.EMPTY, PieceType.EMPTY},
                                                {PieceType.BARRIER, PieceType.BARRIER, PieceType.TARGET, PieceType.PIECE},
                                                {PieceType.EMPTY, PieceType.BARRIER, PieceType.EMPTY, PieceType.PIECE},
                                                {PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER, PieceType.EMPTY}};

    [System.Serializable]
    public struct PiecePrefab
    {
        public PieceType type;
        public GameObject prefab;
    }

    public PiecePrefab[] piecePrefabs;
    private GameObject[,] pieces;
    private Dictionary<PieceType, GameObject> piecePrefabDict;
    public GameObject backgroundPrefab;

    // Start is called before the first frame update
    void Start()
    {
        piecePrefabDict = new Dictionary<PieceType, GameObject>();

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

        pieces = new GameObject[xDim, yDim];
        for (int x = 0; x < xDim; x++)
        {
            for (int y = 0; y < yDim; y++)
            {
                if (board[x, y] == PieceType.EMPTY) continue;
                pieces[x, y] = (GameObject)Instantiate(piecePrefabDict[board[x, y]], GetWorldPosition(y*90, ((xDim-1)-x)*90), Quaternion.identity, transform);
                pieces[x, y].name = "Piece(" + x + "," + y + ")";
                Debug.Log(pieces[x, y].name);
            }
        }
    }

    // Update is called once per frame
    void Update()
    {

    }

    Vector3 GetWorldPosition(int x, int y)
    {
        return new Vector3(transform.position.x + x, transform.position.y + y, 0);
    }
}
