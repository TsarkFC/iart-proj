using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Level1 : Level
{
    void Start()
    {
        base.piecePrefabDict = new Dictionary<PieceType, GameObject>();
        base.board = new PieceType[,] {{PieceType.BARRIER, PieceType.TARGET_PURPLE, PieceType.EMPTY, PieceType.EMPTY},
                                    {PieceType.BARRIER, PieceType.BARRIER, PieceType.TARGET_PURPLE, PieceType.PIECE_PURPLE},
                                    {PieceType.EMPTY, PieceType.BARRIER, PieceType.EMPTY, PieceType.PIECE_PURPLE},
                                    {PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER, PieceType.EMPTY}};
        base.BuildBoard();
    }
}
