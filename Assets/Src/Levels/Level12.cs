using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using piecetype;
using levels;

public class Level12 : Level
{
    void Start()
    {
        base.piecePrefabDict = new Dictionary<PieceType, GameObject>();
        base.board = Levels.level12;
        base.BuildBoard();
        base.BuildHints();
        base.levelNo = 12;
    }
}
