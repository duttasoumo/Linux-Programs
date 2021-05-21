	#prob_3.pl : Write a program to extract all words
	#from any text file. Display all words on screen.
	#Write those words in one output file. Finally
	#display how many words are there in input file
	system("clear");
	printf("\nEnter Input File name=");
	chop($file1=<STDIN>);
	printf("Enter Output File name=");
	chop($file2=<STDIN>);
	open(fin,$file1);
	open(fout,">$file2");
	$nw=0;
		while(<fin>){
		$s=$_;
		$len=length($s);
		$flag=1;
			for($i=0;$i<$len;$i++){
			$s1=substr($s,$i,1);
  if(($s1 ge "A" && $s1 le "Z") || ( $s1 ge "a" && $s1 le "z")){
			if($flag==1){
			$nw++;
			$flag=0;
			}
			printf("%s",$s1);
			print fout $s1;
			}
			elsif($flag==0){
			printf("\n");
			print fout "\n";
			$flag=1;
			}
		       }
		}
	printf("\nTotal number of words displayed=%d\n",$nw);
	close(fin);
	close(fout);
	#End of program
	





	
