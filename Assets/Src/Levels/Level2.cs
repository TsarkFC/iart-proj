using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Level2 : Level
{
    void Start()
    {
        base.piecePrefabDict = new Dictionary<PieceType, GameObject>();
        base.board = new PieceType[,] {{PieceType.BARRIER, PieceType.PIECE_ORANGE, PieceType.BARRIER, PieceType.TARGET_RED},
                                    {PieceType.BARRIER, PieceType.PIECE_RED, PieceType.TARGET_ORANGE, PieceType.EMPTY},
                                    {PieceType.BARRIER, PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER},
                                    {PieceType.EMPTY, PieceType.BARRIER, PieceType.BARRIER, PieceType.EMPTY}};
        base.BuildBoard();
    }
}
