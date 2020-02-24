#! /bin/bash
   
row=3
col=3
player=1
declare -A board
setBoard()
{
for (( i=1;i<=3;i++ ))
do
for (( j=1;j<=3;j++ ))
do
board[$i,$j]=_
done
done
}

displayBoard()
{
for (( i=1;i<=3;i++ ))
 do
 for (( j=1;j<=3;j++ ))
 do
 echo -e "${board[$i,$j]} \c"
 done
 echo
done
}

checkForTie()
{
dash=_
inc=0
for (( i=1;i<=3;i++ ))
do
 for (( j=1;j<=3;j++ ))
 do
 if [[ ${board[$i,$j]} == $dash ]]
 then
 let inc++
 fi
 done
done
if (( $inc == 0 ))
then
clear
echo "Match is tie play again"
bash Tic_Tac_Toe.sh
fi
}

#Method for checking win

checkForWin()
{
 row1="${board[1,1]}${board[1,2]}${board[1,3]}"
 row2="${board[2,1]}${board[2,2]}${board[2,3]}"
 row3="${board[3,1]}${board[3,2]}${board[3,3]}"
 col1="${board[1,1]}${board[2,1]}${board[3,1]}"
 col2="${board[1,2]}${board[2,2]}${board[3,2]}"
 col3="${board[1,3]}${board[2,3]}${board[3,3]}"
 dia1="${board[1,1]}${board[2,2]}${board[3,3]}"
 dia2="${board[1,3]}${board[2,2]}${board[3,1]}"
 playerX="XXX"
 playerO="OOO"

# condition starts from here

if [[ $row1 == $playerX || $row2 == $playerX || $row3 == $playerX || $col1 == $playerX || $col2 == $playerX || col3 == $playerX || dia1 == playerX || dia2 == playerX ]]
then
echo Congrats PlayerX has won
exit
elif [[ $row1 == $playerO || $row2 == $playerO || $row3 == $playerO || $col1 == $playerO || $col2 == $playerO || col3 == $playerO || dia1 == playerO || dia2 == playerO ]]
then
echo Congrats PlayerO has won
exit
fi
}

# Game starts from here

echo "Welcome to TicTacToe Game"
setBoard
displayBoard

while (( 1 ))
do
if (( $player == 1 ))
then
echo "PlayerX turn"
else
echo "PlayerY turn"
fi
read -p "Enter row:" row
read -p "Enter col:" col
while (( 1 ))
do
if [ $row -ge 4 -o $row -le 0 -o $col -ge 4 -o $col -le 0 ]
then
echo "row and col value should be between 1 and 3 enter again"
read -p "Enter row:" row
read -p "Enter col:" col
else
echo updated
break
fi
done
clear

if (( $player == 1 ))
then
let player=0
board[$row,$col]=X
else
let player=1
board[$row,$col]=O
fi

#Displaying the board

displayBoard
checkForWin
checkForTie
done







