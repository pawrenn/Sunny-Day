# Sunny-Day
Color-Based 2048 Clone

A game I created using Game Maker Studio.  I originally wrote the code for the game in Processing, but wanted to try using Game Maker
as it is easier to push to devices if I ever got that far. 

Game Rules:
Primary color blocks spawn along with white blocks.  The red, blue, and yellow blocks can slide around like in 2048.  The white tiles do 
not move and act as road-blocks.  You can combine same-color blocks to make them disappear and help free up the board.  You can combine
different primary colors to make secondary colors.  Secondary colors work the same way as Primary colors.  White blocks "eat" one of each
primary and secondary color.  Once a white block has one of each color, it becomes a rainbow block that can slide around like the rest. 
Rainbow blocks can only combine with eachother.  The total number of rainbow blocks that you have successfully stacked act as your score.

Gamestate:
Currently the game is completely functional until you get a rainbow block.  Then the rainbow block moves, but leaves the sprite of a rainbow
block behind where it originally spawned.  Have not added something that tracks score yet.  The version in Processing is fully functional.
