using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Level7 : Level
{
    void Start()
    {
        base.piecePrefabDict = new Dictionary<PieceType, GameObject>();
        base.board = new PieceType[,] {{PieceType.EMPTY, PieceType.TARGET_PURPLE, PieceType.PIECE_RED, PieceType.BARRIER},
                                    {PieceType.EMPTY, PieceType.BARRIER, PieceType.EMPTY, PieceType.PIECE_PURPLE},
                                    {PieceType.EMPTY, PieceType.EMPTY, PieceType.TARGET_RED, PieceType.EMPTY},
                                    {PieceType.EMPTY, PieceType.BARRIER, PieceType.BARRIER, PieceType.BARRIER}};
        base.BuildBoard();
    }
}
