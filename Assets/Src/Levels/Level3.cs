using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using piecetype;
using levels;

public class Level3 : Level
{
    void Start()
    {
        base.piecePrefabDict = new Dictionary<PieceType, GameObject>();
        base.board = Levels.level3;
        base.BuildBoard();
    }
}
