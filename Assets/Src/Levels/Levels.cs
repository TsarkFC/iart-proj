using System.Collections;
using System.Collections.Generic;
using piecetype;

namespace levels
{
    public static class Levels
    {
        public static PieceType[,] level1 = new PieceType[,] {{PieceType.BARRIER, PieceType.TARGET_PURPLE, PieceType.EMPTY, PieceType.EMPTY},
                                    {PieceType.BARRIER, PieceType.BARRIER, PieceType.TARGET_PURPLE, PieceType.PIECE_PURPLE},
                                    {PieceType.EMPTY, PieceType.BARRIER, PieceType.EMPTY, PieceType.PIECE_PURPLE},
                                    {PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER, PieceType.EMPTY}};
        public static PieceType[,] level2 = new PieceType[,] {{PieceType.BARRIER, PieceType.PIECE_ORANGE, PieceType.BARRIER, PieceType.TARGET_RED},
                                    {PieceType.BARRIER, PieceType.PIECE_RED, PieceType.TARGET_ORANGE, PieceType.EMPTY},
                                    {PieceType.BARRIER, PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER},
                                    {PieceType.EMPTY, PieceType.BARRIER, PieceType.BARRIER, PieceType.EMPTY}};
        public static PieceType[,] level3 = new PieceType[,] {{PieceType.BARRIER, PieceType.EMPTY, PieceType.EMPTY, PieceType.TARGET_PURPLE},
                                    {PieceType.BARRIER, PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER},
                                    {PieceType.EMPTY, PieceType.PIECE_RED, PieceType.EMPTY, PieceType.TARGET_RED},
                                    {PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER, PieceType.PIECE_PURPLE}};
        public static PieceType[,] level4 = new PieceType[,] {{PieceType.BARRIER, PieceType.EMPTY, PieceType.EMPTY, PieceType.EMPTY},
                                    {PieceType.PIECE_RED, PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER},
                                    {PieceType.PIECE_PURPLE, PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER},
                                    {PieceType.EMPTY, PieceType.EMPTY, PieceType.TARGET_PURPLE, PieceType.TARGET_RED}};
        public static PieceType[,] level5 = new PieceType[,] {{PieceType.BARRIER, PieceType.TARGET_PURPLE, PieceType.BARRIER, PieceType.TARGET_ORANGE},
                                    {PieceType.EMPTY, PieceType.PIECE_ORANGE, PieceType.EMPTY, PieceType.EMPTY},
                                    {PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER, PieceType.PIECE_PURPLE},
                                    {PieceType.BARRIER, PieceType.EMPTY, PieceType.BARRIER, PieceType.BARRIER}};
        public static PieceType[,] level6 = new PieceType[,] {{PieceType.BARRIER, PieceType.EMPTY, PieceType.TARGET_ORANGE, PieceType.BARRIER},
                                    {PieceType.EMPTY, PieceType.BARRIER, PieceType.PIECE_ORANGE, PieceType.EMPTY},
                                    {PieceType.BARRIER, PieceType.PIECE_PURPLE, PieceType.EMPTY, PieceType.EMPTY},
                                    {PieceType.BARRIER, PieceType.BARRIER, PieceType.TARGET_PURPLE, PieceType.BARRIER}};
        public static PieceType[,] level7 = new PieceType[,] {{PieceType.EMPTY, PieceType.TARGET_PURPLE, PieceType.PIECE_RED, PieceType.BARRIER},
                                    {PieceType.EMPTY, PieceType.BARRIER, PieceType.EMPTY, PieceType.PIECE_PURPLE},
                                    {PieceType.EMPTY, PieceType.EMPTY, PieceType.TARGET_RED, PieceType.EMPTY},
                                    {PieceType.EMPTY, PieceType.BARRIER, PieceType.BARRIER, PieceType.BARRIER}};
        public static PieceType[,] level8 = new PieceType[,] {{PieceType.EMPTY, PieceType.TARGET_PURPLE, PieceType.BARRIER, PieceType.EMPTY, PieceType.PIECE_ORANGE},
                                    {PieceType.EMPTY, PieceType.EMPTY, PieceType.TARGET_ORANGE, PieceType.EMPTY, PieceType.EMPTY},
                                    {PieceType.EMPTY, PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER, PieceType.PIECE_PURPLE},
                                    {PieceType.EMPTY, PieceType.BARRIER, PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER},
                                    {PieceType.EMPTY, PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER, PieceType.EMPTY}};
        public static PieceType[,] level9 = new PieceType[,] {{PieceType.EMPTY, PieceType.EMPTY, PieceType.EMPTY, PieceType.EMPTY, PieceType.TARGET_ORANGE},
                                    {PieceType.EMPTY, PieceType.BARRIER, PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER},
                                    {PieceType.BARRIER, PieceType.BARRIER, PieceType.EMPTY, PieceType.EMPTY, PieceType.BARRIER},
                                    {PieceType.EMPTY, PieceType.EMPTY, PieceType.EMPTY, PieceType.EMPTY, PieceType.PIECE_RED},
                                    {PieceType.EMPTY, PieceType.EMPTY, PieceType.PIECE_ORANGE, PieceType.TARGET_RED, PieceType.BARRIER}};
    }
}