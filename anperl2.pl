	#anperl2.pl : Write a program to calculate calculate sum and
	#average of 'n' elements. Store 'n' elements in some array
	system("clear");
	print("\nEnter size of your list(1-10)=");
	$n=<STDIN>;
	printf("\nEnter %d elements one by one--->\n",$n);
		for($i=0;$i<$n;$i++){
		printf("a[%d]=",$i);
		$a[$i]=<STDIN>;
		}
	$s=0;
		for($i=0;$i<$n;$i++){
		$s=$s+$a[$i];
		}
	$avg=$s/$n;
	printf("Sum=%d  Average=%6.2f\n",$s,$avg);
	#To find standard deviation
	$sd=0;
		for($i=0;$i < $n ;$i++){
		$sd=$sd+($a[$i]-$avg)*($a[$i]-$avg);
		}
	$sd=sqrt($sd/$n);
	printf("Standard Deviation=%7.4f\n",$sd);
	#End of program

