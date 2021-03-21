using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Level3 : Level
{
    void Start()
    {
        base.piecePrefabDict = new Dictionary<PieceType, GameObject>();
        base.board = new PieceType[,] {{PieceType.BARRIER, PieceType.EMPTY, PieceType.EMPTY, PieceType.TARGET_PURPLE},
                                    {PieceType.BARRIER, PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER},
                                    {PieceType.EMPTY, PieceType.PIECE_RED, PieceType.EMPTY, PieceType.TARGET_RED},
                                    {PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER, PieceType.PIECE_PURPLE}};
        base.buildBoard();
    }

    void Update()
    {
        
    }
}
