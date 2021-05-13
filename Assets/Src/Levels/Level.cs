using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;
using UnityEngine;
using position;
using logic;
using state;
using piecetype;
using robot;
using cloner;
using algorithmtype;
using node;

public abstract class Level : MonoBehaviour
{
    [System.Serializable]
    public struct PiecePrefab
    {
        public PieceType type;
        public GameObject prefab;
    }

    [System.Serializable]
    public struct ArrowPrefab
    {
        public Movement.MovementType type;
        public GameObject prefab;
    }

    /* Controllable in Unity */
    public int xDim;
    public int yDim;
    public PiecePrefab[] piecePrefabs;
    public GameObject backgroundPrefab;
    public float pieceVelocity = 500;
    public ArrowPrefab[] arrowPrefabs;
    public GameObject hintButton;
    public GameObject showStatsButton;
    public GameObject gameOverSection;

    protected PieceType[,] board;
    protected Dictionary<PieceType, GameObject> piecePrefabDict;
    protected Dictionary<Movement.MovementType, GameObject> arrowPrefabDict = new Dictionary<Movement.MovementType, GameObject>();
    private GameObject[,] pieces;

    private Dictionary<GameObject, Movement> piecesMovement = new Dictionary<GameObject, Movement>();  // each piece's movement
    private bool moving = false;  // is any piece moving?
    private int gameOver = -1; // positive if game over has not been shown, negative if its not game over. equal to zero if it is game over and no further action is required

    private State state;
    private Robot robot;
    private GameObject currentHint;
    private int movesCount = 0;

    private TaskCompletionSource<int> movementTask = null;

    // public Level(Mode mode) {
    //     this.levelMode = mode;
    // }

    protected void BuildBoard() 
    {
        this.state = new State(board, xDim, yDim);
        StatsInfo.SetCurrentMovesCount(movesCount);
        if (GameMode.mode == GameMode.Mode.AI) 
        {
            this.robot = new Robot(this.state);
            List<Node> path = this.robot.RunWithMeasurements(GameMode.algorithm);
            this.robot.InitStepByStep(path);

            // because the algorithm selected may not be otimum
            List<Node> minimumPath = this.robot.RunWithoutMeasurements(AlgorithmType.ASTAR_DIRECTION);
            StatsInfo.SetMinimumPossibleMoves(minimumPath.Count - 1);
        }
        else if (GameMode.mode == GameMode.Mode.AGENT)
        {
            Robot robot = new Robot(this.state);
            List<Node> minimumPath = robot.RunWithoutMeasurements(AlgorithmType.ASTAR_DIRECTION);
            StatsInfo.SetMinimumPossibleMoves(minimumPath.Count - 1);
        }
        else 
        {
            this.robot = null;

            // calculating the minimum possible moves
            Robot robot = new Robot(this.state);
            List<Node> path = robot.RunWithoutMeasurements(AlgorithmType.ASTAR_DIRECTION);
            StatsInfo.SetMinimumPossibleMoves(path.Count - 1);

            this.showStatsButton.SetActive(false);
        }

        // correspondance between PieceType and prefabs
        for (int i = 0; i < piecePrefabs.Length; i++)
        {
            if (!piecePrefabDict.ContainsKey(piecePrefabs[i].type))
            {
                piecePrefabDict.Add(piecePrefabs[i].type, piecePrefabs[i].prefab);
            }
        }

        // instantiating backgrounds (need to be instantiated before all game pieces)
        pieces = new GameObject[yDim, xDim];
        for (int y = 0; y < yDim; y++)
        {
            for (int x = 0; x < xDim; x++)
            {
                GameObject background = (GameObject)Instantiate(backgroundPrefab, GetWorldPosition(x*90, ((yDim-1)-y)*90), Quaternion.identity, transform);
            }
        }

        // instantiating entities(obstacles, pieces, targets)
        for (int y = 0; y < yDim; y++)
        {
            for (int x = 0; x < xDim; x++)
            {
                if (IsPiece(board[y, x])) InstantiateEntity(x, y, true);
                else if (board[y, x] != PieceType.EMPTY) InstantiateEntity(x, y, false);
            }
        }
    }

    private void IncrementMovesCount()
    {
        this.movesCount++;
        StatsInfo.SetCurrentMovesCount(this.movesCount);
    }

    private void InstantiateEntity(int x, int y, bool isPiece)
    {
        pieces[y, x] = (GameObject) Instantiate(piecePrefabDict[board[y, x]], GetWorldPosition(x*90, ((yDim-1)-y)*90), Quaternion.identity, transform);
        pieces[y, x].name = "Piece(" + x + "," + y + ")";
        if (isPiece) piecesMovement.Add(pieces[y, x], new Movement(new Position(x, y)));
    }

    Vector3 GetWorldPosition(int x, int y)
    {
        return new Vector3(transform.position.x + x, transform.position.y + y, 0);
    }

    private bool IsPiece(PieceType type)
    {
        return type == PieceType.PIECE_PURPLE || type == PieceType.PIECE_ORANGE || type == PieceType.PIECE_RED;
    }

    protected void BuildHints()
    {
        if (GameMode.mode == GameMode.Mode.AI)
        {
            hintButton.SetActive(false);
            return;
        }
        hintButton.SetActive(true);

        // correspondance between MovementType and prefabs
        for (int i = 0; i < arrowPrefabs.Length; i++)
        {
            if (!arrowPrefabDict.ContainsKey(arrowPrefabs[i].type))
            {
                arrowPrefabDict.Add(arrowPrefabs[i].type, arrowPrefabs[i].prefab);
            }
        }
    }

    public void ShowHintDirection()
    {
        if (this.moving) return;
        Robot hintRobot = new Robot(this.state);
        Movement.MovementType hint = hintRobot.Hint();

        Destroy(currentHint);
        if (!arrowPrefabDict.ContainsKey(hint)) return;
        currentHint = (GameObject)Instantiate(arrowPrefabDict[hint], transform.parent);
    }

    private void FinishMovementTask(int result)
    {
        this.movementTask.SetResult(result);
        this.movementTask = null;
    }

    public TaskCompletionSource<int> HandleMovement(Movement.MovementType movementType)
    {
        if (this.movementTask != null)
        {
            Debug.LogError("Setting movement task but it wasn't null!");
        }
        TaskCompletionSource<int> task = new TaskCompletionSource<int>();
        this.movementTask = task;
        if (movementType != Movement.MovementType.NONE)
        {
            Destroy(currentHint);
            Dictionary<Position, Position> prevNextPositions = Logic.Move(this.state, movementType);
            if (prevNextPositions == null)
            {
                FinishMovementTask(1);
                return task;
            }

            for (int y = 0; y < yDim; y++)
            {
                for (int x = 0; x < xDim; x++)
                {
                    if (IsPiece(board[y, x]))
                    {
                        Movement movement = piecesMovement[pieces[y, x]];
                        Position nextPosition = prevNextPositions[movement.position];
                        if (nextPosition == null) continue;
                        // need to get the next position of the piece and calculate the amount to move
                        movement.StartMovement(nextPosition, movementType);
                    }
                }
            }
            IncrementMovesCount();
            this.moving = true;
            if (Logic.VerifyEndGame(this.state)) this.gameOver = 1;
        } 
        else
        {
            FinishMovementTask(0);
        }

        return task;
    }

    protected void Update()
    {
        if (this.moving) // if moving
        {
            // there should be different target value for each piece
            bool movementGoesOn = false;  // whether the movement continues
            for (int y = 0; y < yDim; y++)
            {
                for (int x = 0; x < xDim; x++)
                {
                    if (IsPiece(board[y, x]))
                    {
                        GameObject piece = pieces[y, x];
                        Movement movement = piecesMovement[piece];

                        if (movement.type == Movement.MovementType.NONE) continue;   // if piece is not moving

                        float amount = this.pieceVelocity*Time.deltaTime;  // amount to move by

                        float diff = movement.target - movement.delta;
                        if (amount > diff) amount = diff;   // good math

                        Vector3 position = pieces[y, x].transform.position;
                        switch(movement.type) {
                            case Movement.MovementType.DOWN:
                                position.y -= amount;
                                break;
                            case Movement.MovementType.UP:
                                position.y += amount;
                                break;
                            case Movement.MovementType.RIGHT:
                                position.x += amount;
                                break;
                            case Movement.MovementType.LEFT:
                                position.x -= amount;
                                break;
                            default:
                                continue;
                        }

                        pieces[y, x].transform.position = position;

                        movementGoesOn = movement.Update(amount) ? true : movementGoesOn; // returns true if the piece's movement continues
                    }
                }
            }
            if (!movementGoesOn)
            {
                this.moving = false;
                FinishMovementTask(0);
            }
        }
        else  // if not moving
        {
            if (this.gameOver > 0)
            {
                this.hintButton.SetActive(false);
                this.gameOverSection.SetActive(true);
                gameOver = 0;
            }
            else if (this.gameOver < 0)
            {
                Movement.MovementType movementType = Movement.MovementType.NONE;
                if (GameMode.mode == GameMode.Mode.HUMAN)
                {
                    if (Input.GetKeyDown(KeyCode.RightArrow))
                    {
                        movementType = Movement.MovementType.RIGHT;
                    }
                    else if (Input.GetKeyDown(KeyCode.LeftArrow))
                    {
                        movementType = Movement.MovementType.LEFT;
                    }
                    else if (Input.GetKeyDown(KeyCode.UpArrow))
                    {
                        movementType = Movement.MovementType.UP;
                    }
                    else if (Input.GetKeyDown(KeyCode.DownArrow))
                    {
                        movementType = Movement.MovementType.DOWN;
                    }
                }
                else if (GameMode.mode == GameMode.Mode.AI)
                {
                    movementType = this.robot.GetNextStep();
                }
                else if (GameMode.mode == GameMode.Mode.AGENT) return;


                HandleMovement(movementType);
            }
        }
        
    }
}
