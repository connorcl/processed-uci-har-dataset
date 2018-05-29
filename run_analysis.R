
## Download dataset if it is not present
if(!file.exists("Dataset.zip")) {
    url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(url = url, destfile = "Dataset.zip", method = "curl")
}

## Extract the dataset if it is not already extracted
data_dir <- "UCI HAR Dataset"
if(!dir.exists(data_dir)) {
    unzip("Dataset.zip")
}

## Load the training and test set files
X_train <- read.table(file.path(data_dir, "train", "X_train.txt"))
y_train <- read.table(file.path(data_dir, "train", "y_train.txt"))
subject_train <- read.table(file.path(data_dir, "train", "subject_train.txt"))
X_test <- read.table(file.path(data_dir, "test", "X_test.txt"))
y_test <- read.table(file.path(data_dir, "test", "y_test.txt"))
subject_test <- read.table(file.path(data_dir, "test", "subject_test.txt"))

## Merge into one dataset
training_set <- cbind(subject_train, y_train, X_train)
test_set <- cbind(subject_test, y_test, X_test)
dataset <- rbind(training_set, test_set)

## Extract columns containing mean or sd of measurements only
features <- read.table(file.path(data_dir, "features.txt"),
                       stringsAsFactors = FALSE)
# Caclulate indexes of relevant features, offsetting by 2 to take into account
# the subject and activity columns in the dataset
idxs_mean_std <- grep("mean\\(\\)|std\\(\\)", features[[2]])
dataset <- dataset[c(1:2, idxs_mean_std + 2)]

## Replace integers in activity column with descriptive names
activities <- read.table(file.path(data_dir, "activity_labels.txt"),
                         stringsAsFactors = FALSE)
dataset[[2]] <- factor(sub("_", " ", tolower(activities[[2]][dataset[[2]]])),
                       levels = c("walking", "walking upstairs", 
                                  "walking downstairs", "sitting", 
                                  "standing", "laying"))

## Label dataset with descriptive variable names
# Extract relevant feature names
varnames <- features[[2]][idxs_mean_std]
# Fix double 'Body' in some names
varnames <- sub("(Body)Body", "\\1", varnames)
# Remove parentheses
varnames <- sub("\\(\\)", "", varnames)
# Separate parts of variable names with .
varnames <- gsub("-", ".", varnames)
varnames <- gsub("([a-z])([A-Z])", "\\1\\.\\2", varnames)
# Replace 't' or 'f' at start of variable name with 'time' or 'freq'
varnames <- sub("^t", "time", varnames)
varnames <- sub("^f", "freq", varnames)
# Convert to lowercase
varnames <- tolower(varnames)
# Apply names to the dataset
names(dataset) <- c("subject", "activity", varnames)

## Summarize by mean of each variable for each subject/activity pair
## to create tidy dataset
library(dplyr)
tidy_dataset <- dataset %>% group_by(subject, activity) %>% summarise_all(mean)

## Write tidy dataset
write.table(tidy_dataset, "tidy_dataset.txt", row.name = FALSE)