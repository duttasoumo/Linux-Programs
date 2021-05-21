	#xxperl1.pl : Write a program in perl to input a,b. Calculate and print
	# hcf, lcm of two numbers
	system("clear");
	printf("\nEnter 1st number=");
	$a=<STDIN>;
	printf("Enter 2nd number=");
	$b=<STDIN>;
	$x=$a;
	$y=$b;
	# To calculate HCF
		while(($r=$x % $y) != 0){
		$x=$y;
		$y=$r;
		}
	$h=$y;
	# To calculate lcm
	$lcm=$a*$b/$h;
	printf("a=%d b=%d hcf=%d lcm=%d\n",$a,$b,$h,$lcm);
	# End of program

