extends "res://addons/gut/test.gd"

"""
File: Manual Testing Document
Author: Paxton Caldwell
Description: File contains manual test documentation for “Surviving the Frontier” game

Player.gd Script Tests
1.	Gravity acts upon player pulling character downwards at all times
2.	Pressing right key results in player accelerating to the right
3.	Pressing left key results in player accelerating to the left 
4.	Player accelerates up to set max speed
5.	Player detects ground tiles
6.	Player does not pass through ground tiles
7.	Pressing up key results in player jumping upward
8.	Player jumps to set jump height
9.	Player detects when falling off the map
10.	Player responds after falling off map

Player.tscn Test
1.	Player sprite is visible in the game
2.	Idle image of player standing is shown when no keys are being pressed
3.	Pressing right key results in run animation facing the rightward direction
4.	Pressing left key results in run animation facing leftward direction
5.	Pressing up key results in jump animation 
6.	Camera follows the player

Alien.gd Script Tests
1.	Gravity acts upon Alien pulling character downwards at all times
2.	Alien detects ground tiles
3.	Alien does not pass through ground tiles
4.	Alien detects walls
5.	Alien detects ledges
6.	Alien starts motion by moving to the right until detecting wall or ledge
7.	Once Alien detects wall, Alien moves in opposite direction
8.	Once Alien detects ledge, Alien moves in opposite direction
9.	Alien starts by moving to the right until detecting wall or ledge

Alien.tscn Tests
1.	Alien sprite is visible in the game 
2.	When Alien moves to the right, Alien run animation is facing the rightward direction
3.	When Alien moves to the left, Alien run animation is facing the leftward direction
4.	When Alien detects ledge and switches direction, Alien sprite is also flipped
5.	When Alien detects wall and switches direction, Alien sprite is also flipped

AlienHitBox.gd Script Tests
1.	Alien detects if player sprite enters collision area
2.	Alien can detect player contact from the front, back, and above
3.	Once alien collides with player, the player is reset to beginning of level

StartMenu.tscn Tests
1.	Once the game is executed, the Start Menu appears first
2.	Start screen expands to full screen size
3.	Title label “Surviving the Frontier” is visible
4.	“Start Game” button is visible
5.	“Quit Game” button is visible

StartMenu.gd Script Tests
1.	Clicking on “Start Game” button takes user to level selection menu
2.	Clicking on “Quit Game” button exits the program

LevelSelectMenu.tscn Tests
1.	Level Selection Menu appears, once clicking “Start Game” button
2.	Level Selection Menu expands to full screen size
3.	Title Label “Select Level” is visible
4.	“Level 1” button is visible
5.	“Level 2” button is visible
6.	“Level 3” button is visible
7.	“Back” button is visible

LevelSelectMenu.gd Script Tests
1.	Clicking “Level 1” button takes user to level 1
2.	Clicking “Level 2” button takes user to level 2
3.	Clicking “Level 3” button takes user to level 3
4.	Clicking “Back” button takes user back to Start Menu

PauseMenu.tscn Tests
1.	Pressing the ‘esc’ key while in a level causes pause menu to pop up
2.	Pause menu expands to full screen size
3.	Background color is visible hiding the game
4.	Title label “Pause” is visible
5.	“Resume” button is visible
6.	“Quit” button is visible
7.	Pressing ‘esc’ again or “Resume” button cause pause menu to become hidden again

PauseMenu.gd Script Tests
1.	Pressing the ‘esc’ key while in a level causes the game’s processes to stop
2.	Pressing the ‘esc’ key again causes the game’s processes to continue
3.	Pressing the “Resume” button causes the game’s processes to continue
4.	Pressing the “Quit” button takes the user back to the Start menu

Background Tests
1.	Space.png is visible as the background
2.	Space image mirrors itself to seem endless
3.	Space image moves by at .1 relative of the player’s movement 

NextLevelPortal.tscn Tests
1.	Portal is visible in level 1, 2, 3
2.	Portal animation is visible (rotates)

NextLevelPortal.gd Script Testa
1.	Portal detects collision with player
2.	When player’s body collides with portal, player is sent to the next level
3.	Portal on each level, sends the correct parameter for which level to transition to next

EndPoint.gd Script Tests
1.	Portal detects collision with player
2.	When the player collides with portal on the last level, the user goes back to level selection menu

GroundTileSet.tscn Tests
1.	Ground tiles are visible in all levels
2.	Top ground tile
3.	4 Corner ground tiles
4.	Bottom ground tile
5.	Dark ground tile
6.	Collision shapes on top, bottom and corner tiles do not allow player or alien to pass through
7.	No collision shape on dark ground tile allows player and alien to pass through

GroundTileSet.tres
1.	Can manually set ground tiles into place in 2D editor

"""
