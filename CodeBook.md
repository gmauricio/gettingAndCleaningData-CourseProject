# CodeBook for transformed "Human Activity Recognition Using Smartphones Dataset"

## Creating the tidy data file

1. Clone the content of this repo
2. Source run_analysys.R, it will leave a final_data variable in your global environment

## Description of final_data.txt

* Dimensions: 180 x 66
* Each row represent a feature extracted from features.txt, only mean and standar deviation calculations are included
* Each column represents a subject or an activity for the measurement.

### Variables for each row:

* tBodyAcc.mean...X"
* "tBodyAcc.mean...Y"
* "tBodyAcc.mean...Z"
* "tBodyAcc.std...X"
*  "tBodyAcc.std...Y"
*  "tBodyAcc.std...Z"
* "tGravityAcc.mean...X"
* "tGravityAcc.mean...Y"
* "tGravityAcc.mean...Z"
* "tGravityAcc.std...X"
* "tGravityAcc.std...Y"
* "tGravityAcc.std...Z"
* "tBodyAccJerk.mean...X"
* "tBodyAccJerk.mean...Y"
* "tBodyAccJerk.mean...Z"
* "tBodyAccJerk.std...X"
* "tBodyAccJerk.std...Y"
* "tBodyAccJerk.std...Z"
* "tBodyGyro.mean...X"
* "tBodyGyro.mean...Y"
* "tBodyGyro.mean...Z"
* "tBodyGyro.std...X"
* "tBodyGyro.std...Y"
* "tBodyGyro.std...Z"
* "tBodyGyroJerk.mean...X"
* "tBodyGyroJerk.mean...Y"
* "tBodyGyroJerk.mean...Z"
* "tBodyGyroJerk.std...X"
* "tBodyGyroJerk.std...Y"
* "tBodyGyroJerk.std...Z"
* "tBodyAccMag.mean.."
* "tBodyAccMag.std.."
* "tGravityAccMag.mean.."
* "tGravityAccMag.std.."
* "tBodyAccJerkMag.mean.."
* "tBodyAccJerkMag.std.."
* "tBodyGyroMag.mean.."
* "tBodyGyroMag.std.."
* "tBodyGyroJerkMag.mean.."
* "tBodyGyroJerkMag.std.."
* "fBodyAcc.mean...X"
* "fBodyAcc.mean...Y"
* "fBodyAcc.mean...Z"
* "fBodyAcc.std...X"
* "fBodyAcc.std...Y"
* "fBodyAcc.std...Z"
* "fBodyAccJerk.mean...X"
* "fBodyAccJerk.mean...Y"
* "fBodyAccJerk.mean...Z"
* "fBodyAccJerk.std...X"
* "fBodyAccJerk.std...Y"
* "fBodyAccJerk.std...Z"
* "fBodyGyro.mean...X"
* "fBodyGyro.mean...Y"
* "fBodyGyro.mean...Z"
* "fBodyGyro.std...X"
* "fBodyGyro.std...Y"
* "fBodyGyro.std...Z"
* "fBodyAccMag.mean.."
* "fBodyAccMag.std.."
* "fBodyBodyAccJerkMag.mean.."
* "fBodyBodyAccJerkMag.std.."
* "fBodyBodyGyroMag.mean.."
* "fBodyBodyGyroMag.std.."
* "fBodyBodyGyroJerkMag.mean.."
* "fBodyBodyGyroJerkMag.std.."

#### Notes:
* Each value is normalized and bounded within [-1,1].

### Variables for each column

* The first 30 columns from 1 to 30 refer to subjects
* The next 6 columns refer to the different activities used for the measurements
* The values on the columns refer to averages of the variables described by rows
