using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Level9 : Level
{
    void Start()
    {
        base.piecePrefabDict = new Dictionary<PieceType, GameObject>();
        base.board = new PieceType[,] {{PieceType.EMPTY, PieceType.EMPTY, PieceType.EMPTY, PieceType.EMPTY, PieceType.TARGET_ORANGE},
                                    {PieceType.EMPTY, PieceType.BARRIER, PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER},
                                    {PieceType.BARRIER, PieceType.BARRIER, PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER},
                                    {PieceType.EMPTY, PieceType.EMPTY, PieceType.EMPTY, PieceType.EMPTY, PieceType.PIECE_RED},
                                    {PieceType.EMPTY, PieceType.EMPTY, PieceType.PIECE_ORANGE, PieceType.TARGET_RED, PieceType.BARRIER}};
        base.buildBoard();
    }

    void Update()
    {
        
    }
}
