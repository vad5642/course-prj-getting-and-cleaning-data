

Getting and Cleaning Data. Course Project Codebook
==============================================================

This code book contains summary of the resulting data fields in tidy.txt. 

### Identifier fields

* SubjectID -- The test subject ID. This is unsigned integer numeric value.
* Activity -- The type of activity performed when the corresponding measurements were taken.
Activity Labels :
    + WALKING : subject was walking during the test
    + WALKING_UPSTAIRS : subject was walking up a staircase during the test
    + WALKING_DOWNSTAIRS : subject was walking down a staircase during the test
    + SITTING : subject was sitting during the test
    + STANDING : subject was standing during the test
    + LAYING : subject was laying down during the test
  
### Measurement fields
These data are real number values. Prefix 't' is used to mark time domain data. Frequency domain ones are marked with 'f' prefix.
Suffixes 'X', 'Y' and 'Z' are used to denote 3-axial signals in the X, Y and Z directions.
Suffixes 'Mean' and 'StdDev' are used for signals mean values and standard deviations respectively.
 
* tBodyAcc_Mean-X
* tBodyAcc_Mean-Y
* tBodyAcc_Mean-Z
* tGravityAcc_Mean-X
* tGravityAcc_Mean-Y
* tGravityAcc_Mean-Z
* tBodyAccJerk_Mean-X
* tBodyAccJerk_Mean-Y
* tBodyAccJerk_Mean-Z
* tBodyGyro_Mean-X
* tBodyGyro_Mean-Y
* tBodyGyro_Mean-Z
* tBodyGyroJerk_Mean-X
* tBodyGyroJerk_Mean-Y
* tBodyGyroJerk_Mean-Z
* tBodyAccMag_Mean
* tGravityAccMag_Mean
* tBodyAccJerkMag_Mean
* tBodyGyroMag_Mean
* tBodyGyroJerkMag_Mean
* fBodyAcc_Mean-X
* fBodyAcc_Mean-Y
* fBodyAcc_Mean-Z
* fBodyAccJerk_Mean-X
* fBodyAccJerk_Mean-Y
* fBodyAccJerk_Mean-Z
* fBodyGyro_Mean-X
* fBodyGyro_Mean-Y
* fBodyGyro_Mean-Z
* fBodyAccMag_Mean
* fBodyBodyAccJerkMag_Mean
* fBodyBodyGyroMag_Mean
* fBodyBodyGyroJerkMag_Mean
* tBodyAcc_StdDev-X
* tBodyAcc_StdDev-Y
* tBodyAcc_StdDev-Z
* tGravityAcc_StdDev-X
* tGravityAcc_StdDev-Y
* tGravityAcc_StdDev-Z
* tBodyAccJerk_StdDev-X
* tBodyAccJerk_StdDev-Y
* tBodyAccJerk_StdDev-Z
* tBodyGyro_StdDev-X
* tBodyGyro_StdDev-Y
* tBodyGyro_StdDev-Z
* tBodyGyroJerk_StdDev-X
* tBodyGyroJerk_StdDev-Y
* tBodyGyroJerk_StdDev-Z
* tBodyAccMag_StdDev
* tGravityAccMag_StdDev
* tBodyAccJerkMag_StdDev
* tBodyGyroMag_StdDev
* tBodyGyroJerkMag_StdDev
* fBodyAcc_StdDev-X
* fBodyAcc_StdDev-Y
* fBodyAcc_StdDev-Z
* fBodyAccJerk_StdDev-X
* fBodyAccJerk_StdDev-Y
* fBodyAccJerk_StdDev-Z
* fBodyGyro_StdDev-X
* fBodyGyro_StdDev-Y
* fBodyGyro_StdDev-Z
* fBodyAccMag_StdDev
* fBodyBodyAccJerkMag_StdDev
* fBodyBodyGyroMag_StdDev
* fBodyBodyGyroJerkMag_StdDev


For the detailed description of the original dataset, please refer `ReadMe.txt` and `features_info.txt` files in the zipped dataset file. Also full description is available at the WWW site the data have been obtained from.

- [zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
- [description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)