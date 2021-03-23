using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Level6 : Level
{
    void Start()
    {
        base.piecePrefabDict = new Dictionary<PieceType, GameObject>();
        base.board = new PieceType[,] {{PieceType.BARRIER, PieceType.EMPTY, PieceType.TARGET_ORANGE, PieceType.BARRIER},
                                    {PieceType.EMPTY, PieceType.BARRIER, PieceType.PIECE_ORANGE, PieceType.EMPTY},
                                    {PieceType.BARRIER, PieceType.PIECE_PURPLE, PieceType.EMPTY, PieceType.EMPTY},
                                    {PieceType.BARRIER, PieceType.BARRIER, PieceType.TARGET_PURPLE, PieceType.BARRIER}};
        base.BuildBoard();
    }
}
