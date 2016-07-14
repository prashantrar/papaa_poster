//Vectorblox implementation of FIR
vbx_sync();
vbx_dma_to_vector(vin, in, NUM_SAMPLES*sizeof(vbx_word_t));
vbx_dma_to_vector(vcoeff, coeff, NUM_COEFF*sizeof(vbx_word_t));
for(i=0;i<NUM_SAMPLES;i++)
{	
	vbx_acc(VVW, VMUL, vout+i, vin+i, vcoeff);
}
vbx_dma_to_host(out, vout, NUM_SAMPLES*sizeof(vbx_word_t));