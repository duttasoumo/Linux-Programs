	#awk1.awk : Write a program in awk to input two(2) numbers and then calculate
	#(i) sum of 2 numbers, (ii) average of 2 numbers. Print the result
	BEGIN{
	system("clear")
	printf "\nEnter 1st number="
	getline a < "/dev/tty"
	printf "Enter 2nd number="
	getline b < "/dev/tty"
	s=a+b
	avg=s/2
	printf "a=%5.2f b=%5.2f sum=%6.2f average=%6.2f\n",a,b,s,avg
	}
	#end of program

