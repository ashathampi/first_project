function guess()    #function to guess
{
    count=$1
    response=$2
    while [[ $response -ne $count ]]
    do
	    if [[ $response -gt $count ]]
	    then
		    echo "too high"
	    else 
		    echo "too low"
	    fi
    done
    
    echo "Congratulations!!"
}

echo "Enter your guess: "
read response       #user input

count=$(ls -l | wc -l)
echo $count     #actual number of files

guess count response    #function call with parameters
