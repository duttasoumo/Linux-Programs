	#prob_2.pl: Write a program to display content of
	# a file column wise. Transfer the content to 
	#to another output file. Display how many bytes
	#copied to output file
	system("Clear");
	printf("\nEnter Input File Name=");
	chop($file1=<STDIN>);
	printf("Enter Output File Name=");
	chop($file2=<STDIN>);
	open(fin,$file1);   # to open file in input mode
	open(fout,">$file2");# to open file in output mode
	$n=0; # $n=number of bytes copied to output file
		while(<fin>){
		$s=$_;
		$n=$n+length($s); # to add length of one line
			for($i=0;$i<length($s);$i++){
			$s1=substr($s,$i,1);
			printf("%s\n",$s1);
			print fout $s1;
			print fout "\n";
			}
		}
	printf("\nNumber of Bytes copied=%d\n",$n);
	close(fin);
	close(fout);
	#End of program




	
