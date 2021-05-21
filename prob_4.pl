	#prob_4.pl : Write a program to dislay (i) number of vowels,
	# (ii) number of consonents in any file.
	system("clear");
	printf("\nEnter Input File name=");
	chop($file1=<STDIN>);
	
	open(fin,$file1);
	
	$nov=0;
	$noa=0;
		while(<fin>){
		$s=$_;
		$len=length($s);
			for($i=0;$i<$len;$i++){
			$s1=substr($s,$i,1);
  if(($s1 ge "A" && $s1 le "Z") || ( $s1 ge "a" && $s1 le "z")){
			$noa++;
			
if( $s1 eq "A" || $s1 eq "E" || $s1 eq "I" || $s1 eq "O" || $s1 eq "U"){
			$nov++;
			}
if( $s1 eq "a" || $s1 eq "e" || $s1 eq "i" || $s1 eq "o" || $s1 eq "u"){
			$nov++;
			}

			}
			
			}
			
			}
		$noc=$noa-$nov;
	printf("Number of consonents=%d Number of vowels=%d\n",$noc,$nov);
	close(fin);
	close(fout);
	#End of program
	





	
