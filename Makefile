F=papaa_poster.tex

P=./plots/CL_1DFIR_Profiling* ./plots/CL_1DFIR_Profile_Ops* ./plots/Cimpl_1DFIR_Profiling* ./plots/Cimpl_1DFIR_Profile_Ops*

all:
	Rscript ./plots/CL_1DFIR_Profiling.R
	Rscript ./plots/CL_1DFIR_Profile_Ops.R
	Rscript ./plots/Cimpl_1DFIR_Profiling.R
	Rscript ./plots/Cimpl_1DFIR_Profile_Ops.R
	pdflatex $(F)
