#!/usr/bin/env bash

function guess(){
    correct_ans=$(ls -1a|wc -l)  #To show count including hidden files or .files
    while true;
    do
        echo "Put in your guess"
        read  your_guess
        if ! [[ "$your_guess" =~ ^[0-9]+$ ]]
        then
             echo "Sorry integers only"
        elif [ $your_guess -lt $correct_ans ]
        then
            echo "guess is Less then the true answer"
        elif [ $your_guess -gt $correct_ans ]
        then
            echo "guess is Greater then the true answer"
        else
            echo "Congratulations!!!Your guess is absolutely right"
        break;
        fi
    done
}
echo "Can you guess the number of files in the current directory!"
guess
