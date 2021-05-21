	#anawk2.awk : Write a program in awk to calculate sin(x),cos(x), tan(x)
	BEGIN{
	system("clear")
	count=0
	for(x=0;x<=360;x=x+5){
	xrad=x*3.141592653589793/180
	# To calculate sin(x)
	csin=xrad
	psin=1
	eps=csin-psin
		if(eps<0){
		eps=-eps;
		}
	n=3
	sf=-1
		while( eps> 1e-10){
		psin=csin
		fact=1
		xp=1
			for(i=1;i<=n;i++){
			fact=fact*i;
			xp=xp*xrad;
			}
		csin=csin+sf*xp/fact
		eps=csin-psin
			if(eps<0){
			eps=-eps
			}
		n=n+2
		sf=-sf
		}
	
	# To calculate cos(x)
	ccos=1
	pcos=0
	eps=ccos-pcos
		if(eps<0){
		eps=-eps
		}
	n=2
	sf=-1
		while( eps> 1e-10){
		pcos=ccos
		fact=1
		xp=1
			for(i=1;i<=n;i++){
			fact=fact*i
			xp=xp*xrad
			}
		ccos=ccos+sf*xp/fact
		eps=ccos-pcos
			if(eps<0){
			eps=-eps
			}
		n=n+2
		sf=-sf
		}
	# To calculate tan(x)
	ctan=csin/ccos
	printf "Sin(%5.1f)=%12.7f Cos(%5.1f)=%12.7f Tan(%5.1f)=%16.5f\n",x,csin,x,ccos,x,ctan
	count++
		if((count%20)==0){
		printf "Press enter key to continue-->"
		getline choice < "/dev/tty"
		}
	}
	}
	#end of program

