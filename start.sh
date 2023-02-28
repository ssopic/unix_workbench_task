local_sum=57546
function x_minus_y {
x=$(ls -a|wc -l) #the number of files in the folder
read y
let local_sum=$(echo "$x-2-$y"|bc -l) #The minus 2 removes the counts of "." and ".." from
# the ls output
}
echo "Welcome to the guess the number game."
echo "How many files do you think there are in this folder?"

while [[ $local_sum -ne 0 ]]
do
	x_minus_y
	if [[ $local_sum -lt 0 ]]
	then
		echo "There are less files than that. Try again."
	elif [[ $local_sum -gt 0 ]]
	then
		echo "There are more files than that. Try again"
	elif [[ $local_sum -eq 0 ]]
	then
		echo "Congratulations. Good guess"
	fi
done
