# Processed UCI Human Activity Recognition Using Smartphones Dataset

This data comes from the [UCI Human Activity Recognition Using Smartphones 
Dataset](https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
This dataset is the result of an experiment by Jorge L. Reyes-Ortiz, 
Davide Anguita, Alessandro Ghio and Luca Oneto, involving the recording of 
accelerometer and gyroscope data from smartphones attached to the waists of 
participants as they performed different activities. See `CodeBook.md` for more
information on the design of this experiment.

This repository contains a tidy summary of this data.

## Included Files

### Information

`README.md` (this file) contains information on the files in this repository.

`CodeBook.md` contains information on the variables present in the dataset 
`tidy_data.txt` produced by `run_analysis.R`. It also summarizes the design of
the experiment in which the raw data was collected.

### Data

`tidy_data.txt` is the tab-delimited data file produced by running 
`run_analysis.R`.  

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
* Replace the integer activity indentifiers with descriptive names  
* Label the columns with descriptive variable names  
* Summarize the dataset by providing the mean of each measurement variable for 
every unique subject-activity combination  
* Save this tidy summary to `tidy_data.txt`  

This script depends on the `dplyr` R package. The analysis was performed
using R version 3.5.0 and dplyr version 0.7.5.  
