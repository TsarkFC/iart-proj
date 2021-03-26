using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using piecetype;
using levels;

public class Level7 : Level
{
    void Start()
    {
        base.piecePrefabDict = new Dictionary<PieceType, GameObject>();
        base.board = Levels.level7;
        base.BuildBoard();
    }
}
