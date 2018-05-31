# Processed UCI Human Activity Recognition Using Smartphones Dataset

This data comes from the UCI Human Activity Recognition Using Smartphones 
Dataset. This dataset is the result of an experiment by Jorge L. Reyes-Ortiz, 
Davide Anguita, Alessandro Ghio and Luca Oneto, involving the recording of 
accelerometer and gyroscope data from smartphones attached to the waists of 
participants as they performed different activities. See `CodeBook.md` for more
information on the design of this experiment.

## Included Files

### Information

`README.md` (this file) contains information on the files in this repository.

`CodeBook.md` contains information on the design of the experiment in which
the raw data was collected and the variables in the tidy dataset `tidy_data.txt` 
produced by `run_analysis.R`.  

### Processing Scripts

`run_analysis.R` is the R script used to perform the following steps:  
* Download the zipped dataset and extract it (if not already present), 
creating the `UCI HAR Dataset` directory  
* Concatenate the data from the files `sample_train`, `y_train` and `X_train`, 
found  under `UCI HAR Dataset/train`, column-wise, and do the same for the 
files `sample_test`, `y_test` and `X_test`, found under `UCI HAR Dataset/test`   
* Concatenate the resulting training and test sets row-wise to create a 
complete dataset  
* Discard variables which are not the `mean()` or `sd()` of a signal  
* Replace the integer activity indentifier with descriptive names  
* Label the columns with descriptive variable names  
* Summarize the dataset by providing the mean of each measurement variable for 
every unique subject-activity combination  
* Save this tidy summary to `tidy_data.txt`  

This script depends on the `dplyr` package. The analysis was performed
using R version 3.5.0 and dplyr version 0.7.5.  

### Datasets

`tidy_data.txt` is the tab-delimited data file produced by running 
`run_analysis.R`.  
