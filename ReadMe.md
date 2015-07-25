Course Project Getting and Cleaning Data
==================================

The script run_analysis.R performs the 5 steps described in the course project's definition using following algorithm.

1. Get dataset from WWW.
    1. If zip file is not downloaded download it.
    2. If dataset is not unzipped unzip it.
    3. Read activity labels.
    4. Read feature labels.   
2. Read the training and the test sets and merge them to create one data set.
3. Extract only the measurements on the mean and standard deviation for each measurement.
    1. Get wanted columns indexes using grep with the following patterns :
         * -mean()
         * -std()
    2. Subset data frame got at 2. with indexes got at 3.1.
4. Appropriately label the data set with descriptive variable names.
    1. Subset feature labels.
    2. Make feature labels more aestetic.
    3. Set columns names.
5. Set descriptive activity names to name the activities in the data set.   
6. From the the data set create a second, independent tidy data set with the average of each variable for each activity and each subject using plyr package.
7. Save the data set from step 6. as CSV file.
