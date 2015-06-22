# Getting And Cleaning Data - Course Project

## Description of included files

* UCI HAR Dataset: folder containing the data set uncompressed and downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* README.md: this file
* final_data.txt: The data output produced by running run_analysis.R
* run_analysys.R

## What run_analysis.R does ?

1. It first reads the list of features from features.txt, in a data frame with two columns , number and name.
2. It loads from activity_labels.txt to a data frame with columns number an label
3. Then it loads the test data by loading subject_test.txt, X_test.txt and y_test.txt , for the X_test it uses the name column from the features table to use it as names for the columns.
4. Does a cbind of the previous data tables, to assemble the complete test_data
5. Repeat 3 and for , but this time for the train data
6. Does a rbind to concatenate/merge the test data with the train data
7. It creates a vector of "variables" by using a regex, to match against the variables in the dataset that refers to a mean or standard deviation
8. Then it uses that list of variables to extract a new data set with only those variables
9. It uses mapvalues, to change the values in the activity column, from the number to a descriptive value that comes from the activity_labels table.
10. To be able to construct the final tidy data set, it splits the data frame by subject, and then by activity
11. For each of those new lists it calculates the avg of the variables
12. It finally, cbinds both data sets, into a new data set, where each row is the variable, and each column refers first to the listo of subjects, and then to the list of activities. The result is saved into a final_data variable.
