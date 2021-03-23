using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Level5 : Level
{
    void Start()
    {
        base.piecePrefabDict = new Dictionary<PieceType, GameObject>();
        base.board = new PieceType[,] {{PieceType.BARRIER, PieceType.TARGET_PURPLE, PieceType.BARRIER, PieceType.TARGET_ORANGE},
                                    {PieceType.EMPTY, PieceType.PIECE_ORANGE, PieceType.EMPTY, PieceType.EMPTY},
                                    {PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER, PieceType.PIECE_PURPLE},
                                    {PieceType.BARRIER, PieceType.EMPTY, PieceType.BARRIER, PieceType.BARRIER}};
        base.BuildBoard();
    }
}
