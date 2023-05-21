* Principal Component Analysis and Factor Analysis in SAS;

proc import out= work.data
datafile= "C:\Users\sarap\Documents\SAS\Table1_8.csv" 
dbms=csv replace; getnames=yes; datarow=2; 
run;

%let varlist = x1 x2 x3 x4 x5 x6;

proc corr data=data;
var &varlist;
run;

* Principal component analysis (PCA);
proc princomp data=data;
var &varlist;
run;

* PCA with 2 components;
proc princomp data=data 
n=2 
out=data;
var &varlist;
run;

* Plotting principal components;
proc plot data=data;
plot prin2*prin1;
run;

* Factor analysis;
proc factor data=data 
method=principal
priors=one
rotate=none
scree;
var &varlist;
run;

* Factor analysis retaining 2 factors, with varimax rotation;
proc factor data=data 
method=principal 
priors=one 
nfactors=2 
rotate=varimax;
var &varlist;
run;


