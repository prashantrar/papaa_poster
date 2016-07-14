//FIR filtering in C
for(i=0;i<NUM_SAMPLES;i++){
		//e_base[i]=0;
		for(j=0;j<NUM_COEFF;j++){
			e_base[i]+=coeff[j]*(Src[i+NUM_COEFF-j-1]);
		}
}