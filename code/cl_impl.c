//Kernel Implementation for FIR
__kernel void fir12(                                                     
	__global float* input,                                              
	__global float* output)                                           
{                                                                     
   int i = get_global_id(0); 
   int j = 0;
   int coeff[12] = {5,7,5,7,5,7,5,7,5,7,5,7};
   for(j=0;j<12;j++)
   {
   	output[i] += coeff[j]*(input[i+12-j-1]);
   }                                
}    