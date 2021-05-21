	#anperl1.pl : Write a program in perl to calculate hcf of two
	# numbers
	system("clear");
	printf("\nEnter 1st number=");
	$a=<STDIN>;
	printf("Enter 2nd number=");
	$b=<STDIN>;
		while( ($r=$a%$b) !=0){
		$a=$b;
		$b=$r;
		}
	printf("HCF=%d\n",$b);
	#end of program

