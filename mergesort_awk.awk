	#mergesort_awk.awk : Write a program in awk to implement
	#merge sort method.
	BEGIN{
	system("clear")
	printf "\nEnter size of your list(1-10)="
	getline n < "/dev/tty"
	print "Enter elements of your list--->"
		for(i=0;i<n;i++){
		printf "a[%d]=",i
		getline a[i] < "/dev/tty"
		id[i]=i+1
		}
	system("clear")
	printf "\nUnsorted List\n"
	printf "Number\tIndex\n"
		for(i=0;i<n;i++){
		printf "%d\t%d\n", a[i],id[i]
		}
	printf "Press enter key-->"
	getline < "/dev/tty"
	#Merge Sort routine starts
	size=1
	pass=0
		while( size < n ){
		ia=0
		ix=0
		pass=pass+1
			while((ia+size) < n){
			
			ib=ia+size
			ua=ib-1
				if((ib+size-1) < n){
				ub=ib+size-1
				}
				else
				{
				ub=n-1
				}
			i=ia
			j=ib
				for( ; i<=ua && j<=ub; ix++){
					if( a[i] <= a[j]){
					aux[ix]=a[i]
					iux[ix]=id[i]
					i++
					}
					else
					{
					aux[ix]=a[j]
					iux[ix]=id[j]
					j++
					}
				}
			# To copy elements from non-emty list
				for( ; i<=ua;i++){
					aux[ix]=a[i]
					iux[ix]=id[i]
					ix++
					}
				for( ; j<=ub;j++){
					aux[ix]=a[j]
					iux[ix]=id[j]
					ix++
					}
				ia=ub+1
			}
				
		# To copy residual elements from a[] to aux[]
		
				for( ; ix<n; ix++){
				aux[ix]=a[ia]
				iux[ix]=id[ia]
				ia++
				}
		# To copy back all elements from aux[] back to a[]
				for(i=0;i<n;i++){
				a[i]=aux[i]
				id[i]=iux[i]	
				}
			system("clear")
			printf "List after Pass=%d size=%d\n",pass,size
			printf "Number\tIndex\n"
			for(i=0;i<n;i++){
			printf "%d\t%d\n",a[i],id[i]
			}
		printf "Press enter key--->"
		getline ch < "/dev/tty"
		size=2*size
		}
	printf "\nSorted List\n"
	printf "Number\tIndex\n"
		for(i=0;i<n;i++){
		printf "%d\t%d\n", a[i],id[i]
		}
	}
				
	
























	


					

























		






