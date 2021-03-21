using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Level8 : Level
{
    void Start()
    {
        base.piecePrefabDict = new Dictionary<PieceType, GameObject>();
        base.board = new PieceType[,] {{PieceType.EMPTY, PieceType.TARGET_PURPLE, PieceType.BARRIER, PieceType.EMPTY, PieceType.PIECE_ORANGE},
                                    {PieceType.EMPTY, PieceType.EMPTY, PieceType.TARGET_ORANGE, PieceType.EMPTY, PieceType.EMPTY},
                                    {PieceType.EMPTY, PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER, PieceType.PIECE_PURPLE},
                                    {PieceType.EMPTY, PieceType.BARRIER, PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER},
                                    {PieceType.EMPTY, PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER, PieceType.EMPTY}};
        base.buildBoard();
    }

    void Update()
    {
        
    }
}
