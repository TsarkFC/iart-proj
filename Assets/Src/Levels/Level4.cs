using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Level4 : Level
{
    void Start()
    {
        base.piecePrefabDict = new Dictionary<PieceType, GameObject>();
        base.board = new PieceType[,] {{PieceType.BARRIER, PieceType.EMPTY, PieceType.EMPTY, PieceType.EMPTY},
                                    {PieceType.PIECE_RED, PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER},
                                    {PieceType.PIECE_PURPLE, PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER},
                                    {PieceType.EMPTY, PieceType.EMPTY, PieceType.TARGET_PURPLE, PieceType.TARGET_RED}};
        base.BuildBoard();
    }
}
