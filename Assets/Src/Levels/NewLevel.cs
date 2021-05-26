using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using piecetype;
using levels;

public class NewLevel : Level
{
    void Start()
    {
        base.piecePrefabDict = new Dictionary<PieceType, GameObject>();
        base.board = Levels.newLevel;
        base.BuildBoard();
        base.BuildHints();
        base.levelNo = 13;
    }
}
