# Match the Tiles

## Game & Algorithms Demo

<img src="https://imgpile.com/images/Nesjel.gif"/>

## Reinforcement Learning Training Demo

![](https://i.postimg.cc/251Ctz7F/training.gif)

## Graphical interface running instruction
- `Windows Build`: excute the IARTistas.exe file present in group35WindowsBuild64.zip
- `Linux Build`: excute the IARTgroup35.x86_64 file present group35LinuxBuild64.zip
- Navigate through the menus with keyboard keys or the mouse.
- Use the keyboard arrow keys to move the pieces while in the game.

## How to train models in Unity3D

1. Install Unity and open the project.

1. Install the requirements listed in `requirements.txt`.
```
pip install -r requirements.txt
```

2. Run ml agents.
With the default configuration file (PPO):
```
mlagents-learn --run-id=Run1
```

With a custom configuration file (In this case, SAC):
```
mlagents-learn configs/sac_config.yaml
```

3. Open the 'Training' scene in Unity and press the play button. The agent will start training.

4. After training for a while you can stop the execution of the scene.

5. To view the graphics about the training, start TensorBoard:
```
tensorboard --logdir results
```


