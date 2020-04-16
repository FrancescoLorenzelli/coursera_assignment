function read_number {
	read answer
}
echo 'Guess how many files are in this directory'
answer=0
correct=$(ls | wc -l)
while [ $answer -ne $correct ]
do
	read_number
	if [ $answer -lt $correct ]
	then
		echo 'Wrong. Your guess was too LOW! Retry'
	fi
	if [ $answer -gt $correct ]
	then
		echo 'Wrong. Your guess was too HIGH! Retry'
	fi
	if [ $answer -eq $correct ]
	then
		echo 'Your guess is correct!'
	fi
done
