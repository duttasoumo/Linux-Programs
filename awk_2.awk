	#awk_2.awk : write a program in awk to calculate
	# s=(1)+(1+2)+....(1+2+....+n)
	BEGIN{
	system("clear")
	printf "Enter n(1-10)="
	getline n < "/dev/tty"
	s=0
	s1=0
		for(i=1;i<=n;i++){
		s1=s1+i
		s=s+s1
		}
	printf "Sum of %d numbers=%d\n\n",n,s
	}
	#end of program

