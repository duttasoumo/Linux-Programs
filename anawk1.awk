	# anawk1.awk : Write a program to to input size of a list say 'n'
	# Enter 'n' arbitrary elements and store in some 1-dimensional array
	# say a. calculate and print the following
	# (i) sum of all elements, (ii) average of all elements
	# (iii) largest value and, (iv) standard deviation
	BEGIN{
	system("clear")
	printf "\nEnter size of your list(1-10)="
	getline n < "/dev/tty"
	printf "Enter %d elements one by one--->\n",n
		for(i=0;i<n;i++){
		printf "a[%d]=",i
		getline a[i] < "/dev/tty"
		}
	# To calculate sum and average of 'n' elements
	s=0
		for(i=0;i<n;i++){
		s=s+a[i]
		}
	avg=s/n;
	#To calculate largest value
	mx=a[0]
		for(i=1;i<n;i++){
			if(a[i]>mx)
			mx=a[i];
			}
	#To calculate standard deviation
		sd=0
		for(i=0;i<n;i++){
		sd=sd+(a[i]-avg)*(a[i]-avg)
		}
	sd=sqrt(sd/n)
printf "Sum=%d Average=%6.2f Largest number=%d Standard deviation=%7.4f\n",s,avg,mx,sd
	}
#End of program

 
