using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using piecetype;
using levels;

public class Level4 : Level
{
    void Start()
    {
        base.piecePrefabDict = new Dictionary<PieceType, GameObject>();
        base.board = Levels.level4; 
        base.BuildBoard();
        base.BuildHints();
        base.levelNo = 4;
    }
}
