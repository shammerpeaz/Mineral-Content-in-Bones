# Mineral-Content-in-Bones
PCA and Factor Analysis in SAS

This project uses a dataset that measures the mineral content of bones by photon absorptiometry to determine whether exercise or supplements would slow down bone loss in older women. The measurements of three bones were recorded at the beginning of the study, on dominant and non-dominant sides. The variables in the table are as follows:

Subject = Subject number;
x1 = Dominant radius;
x2 = Radius;
x3 = Dominant humerus;
x4 = Humerus;
x5 = Dominant ulna;
x6 = Ulna

This table was obtained from Applied Multivariate Statistical Analysis, 6th edition, by Richard A. Johnson and Dean W. Wichern (Table1_8.csv).

The SAS code is in the included file “PCA and FA in SAS.sas”. The output is in the included file “PCA and FA SAS Output.mht”

The correlation matrix given by proc corr in SAS shows high correlation between the variables, which is to be expected, since measurements are taken on bones from the same body for each observation. A high reading in one bone of a woman would lead one to believe there would also be a high reading in another bone in the same body. Given these high correlations, Principal Component Analysis/Factor Analysis is appropriate for variable reduction. 

The princomp procedure conducts a Principal Component Analysis. The results indicate that one principal component would be sufficient to explain a high variability in the data. Two principal components explains 87%, and so the princomp procedure is run again retaining two principal components. 

A plot of the principal components is displayed to determine whether there are any outliers. None of the observations appear to be extreme.

The factor procedure in SAS is conducted for a Factor Analysis. The variance explained by just one factor is 4.48, and the communalities are pretty high for all variables. 

The procedure is run again, retaining two factors. The variance explained increased to 5.23, and all communalities increased as well. A varimax rotation showed no improvement on the communalities, and so is likely unnecessary. 

Both PCA and FA would indicate that only one or two principal components or factors would be necessary for further analysis, reducing complexity.  

