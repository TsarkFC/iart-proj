using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using piecetype;
using levels;

public class Level5 : Level
{
    void Start()
    {
        base.piecePrefabDict = new Dictionary<PieceType, GameObject>();
        base.board = Levels.level5;
        base.BuildBoard();
        base.BuildHints();
        base.levelNo = 5;
    }
}
