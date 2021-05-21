	#anawk3.awk : Write a program to calculate exp(x) for x=.1,.2,..2.0
	BEGIN{
	system("clear")
		for(x=.1;x<=2.0;x=x+.1){
		#To calculate exp(x)
		ce=1
		pe=0
		fact=1
		n=1
		eps=ce-pe
		xp=1
			while(eps>1e-10){
			pe=ce
			fact=fact*n
			xp=xp*x
			ce=ce+xp/fact
			eps=ce-pe
			n=n+1
			}
		printf "eps(%5.1f)=%12.8f\n",x,ce
		}
	}
	#end of program
	
