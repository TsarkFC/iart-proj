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

    protected void buildBoard() 
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
                pieces[x, y] = (GameObject)Instantiate(piecePrefabDict[board[x, y]], GetWorldPosition(y*90, ((xDim-1)-x)*90), Quaternion.identity, transform);
                pieces[x, y].name = "Piece(" + x + "," + y + ")";
            }
        }
    }

    Vector3 GetWorldPosition(int x, int y)
    {
        return new Vector3(transform.position.x + x, transform.position.y + y, 0);
    }
}
