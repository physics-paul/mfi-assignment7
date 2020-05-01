/* PAUL SANDERS       */
/* SAS DATA WRANGLING */

libname path "Q:\Data-ReadOnly\CRSP";

%let variables = PERMNO DATE PRC RET;

DATA DSF10_WRANGLED;
	set path.dsf(keep = &variables.);
	if mdy(01,01,2000) <= DATE <= mdy(12,31,2010);
RUN;

PROC EXPORT DATA = DSF10_WRANGLED OUTFILE = "C:\Users\psanders8\Documents\DATASETS\DSF10_WRANGLED.csv" dbms = csv replace;
RUN;
