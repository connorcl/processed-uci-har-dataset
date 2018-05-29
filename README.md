# Processed UCI Human Activity Recognition Using Smartphones Dataset

## Included Files

`run_analysis.R` is the complete R script which will download, extract and 
process the data according to the Coursera assignment instructions.  It performs
the following steps:  
* Downloads the zipped dataset and extracts it, creating the `UCI HAR Dataset` 
directory  
* Merges the files `sample_train`, `y_train` and `X_train`, found under
`UCI HAR Dataset/train`, column-wise, and does the same for the files 
`sample_test`, `y_test` and `X_test`, found under `UCI HAR Dataset/test`   
* Merges the resulting training and test sets row-wise to create a complete
dataset  
* Discards variables which are not the `mean()` or `sd()` of a signal  
* Replaces the integer activity indentifier with descriptive names  
* Labels the columns with descriptive variable names
* Summarizes the dataset by providing the mean of each measurement variable for 
every unique subject-activity combination
* Saves this tidy summary to `tidy_data.txt`  

`run_analysis.R` depends on the `dplyr` package. This analysis was performed
using R version 3.5.0 and dplyr version 0.7.5.  

`CodeBook.md` contains information on the variables in the tidy dataset 
`tidy_data.txt` produced by `run_analysis.R`.  
