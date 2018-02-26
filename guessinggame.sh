
takeInput()
{
      read file_num
      echo $file_num
}


check()
{
	local count=`ls -l | wc -l`
	echo $count
}

n=$(check)


echo "Guess the no. of files in the current directory:"
userGuess=$(takeInput)


while true
	do
		if [ $userGuess -eq $n ] 
		then
			echo "Congratulations! You got it correct! "
			break

		elif  [ $userGuess -ne $n ] 
		then
	              if [ $userGuess -ge $(($n+10)) ]
		      then
		          echo "Your guess is too high!"
			  break
                      elif [ $userGuess -le $(($n-10)) ]
		      then
		          echo "Your guess is too low"	
			  echo "Guess the no. of files in the current directory:"
			  userGuess=$(takeInput)		
		           
		      else
		          echo "Wrong guess but getting closer!"
                          echo "Guess the no. of files in the current directory:"
                          userGuess=$(takeInput)
                      	  
		      fi
		fi
        done


