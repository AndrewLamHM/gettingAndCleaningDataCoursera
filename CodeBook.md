# Code BookThis code book summaries the data cleaning procedures, resulting data fields in x_combined.txt (output of step 4) and x_combined_mean_std (output of step 5).## A.Data Cleaning Procedures

The function run_analysis in run_analysis.R does the following.

1. delete any old output files and old directories generated previously
2. download the csv files, unzip to a sub-directory under the current directory
3. load the measurements, subject and activity data
4. read the features to get the column name, and re-assign to the measure data
5. extract only mean and standard deviation columns, and merge to form a new dataset
6. replace activity labels by their names for the new dataset (criteria 1- 4 met)
7. generate an independent tidy data set with the average of each variable for each activity and each subject
8. write the output of step 6 and 7 to two text files
The deliverables are x_combined.txt (criteria 1 - 4) and x_combined_mean_std.txt (criteria 5)## B.x_combined_mean_std (output of step 5)### Identifiers
* Subject:  Tdentifier of who carried out the experiment. Total 30* Activity:  Type of activity performed when the corresponding measurements were taken. Total 6### Measurements* activity* subject* tBodyAcc-mean()-X_mean* tBodyAcc-mean()-Y_mean* tBodyAcc-mean()-Z_mean* tBodyAcc-std()-X_mean* tBodyAcc-std()-Y_mean* tBodyAcc-std()-Z_mean* tGravityAcc-mean()-X_mean* tGravityAcc-mean()-Y_mean* tGravityAcc-mean()-Z_mean* tGravityAcc-std()-X_mean* tGravityAcc-std()-Y_mean* tGravityAcc-std()-Z_mean* tBodyAccJerk-mean()-X_mean* tBodyAccJerk-mean()-Y_mean* tBodyAccJerk-mean()-Z_mean* tBodyAccJerk-std()-X_mean* tBodyAccJerk-std()-Y_mean* tBodyAccJerk-std()-Z_mean* tBodyGyro-mean()-X_mean* tBodyGyro-mean()-Y_mean* tBodyGyro-mean()-Z_mean* tBodyGyro-std()-X_mean* tBodyGyro-std()-Y_mean* tBodyGyro-std()-Z_mean* tBodyGyroJerk-mean()-X_mean* tBodyGyroJerk-mean()-Y_mean* tBodyGyroJerk-mean()-Z_mean* tBodyGyroJerk-std()-X_mean* tBodyGyroJerk-std()-Y_mean* tBodyGyroJerk-std()-Z_mean* tBodyAccMag-mean()_mean* tBodyAccMag-std()_mean* tGravityAccMag-mean()_mean* tGravityAccMag-std()_mean* tBodyAccJerkMag-mean()_mean* tBodyAccJerkMag-std()_mean* tBodyGyroMag-mean()_mean* tBodyGyroMag-std()_mean* tBodyGyroJerkMag-mean()_mean* tBodyGyroJerkMag-std()_mean* fBodyAcc-mean()-X_mean* fBodyAcc-mean()-Y_mean* fBodyAcc-mean()-Z_mean* fBodyAcc-std()-X_mean* fBodyAcc-std()-Y_mean* fBodyAcc-std()-Z_mean* fBodyAccJerk-mean()-X_mean* fBodyAccJerk-mean()-Y_mean* fBodyAccJerk-mean()-Z_mean* fBodyAccJerk-std()-X_mean* fBodyAccJerk-std()-Y_mean* fBodyAccJerk-std()-Z_mean* fBodyGyro-mean()-X_mean* fBodyGyro-mean()-Y_mean* fBodyGyro-mean()-Z_mean* fBodyGyro-std()-X_mean* fBodyGyro-std()-Y_mean* fBodyGyro-std()-Z_mean* fBodyAccMag-mean()_mean* fBodyAccMag-std()_mean* fBodyBodyAccJerkMag-mean()_mean* fBodyBodyAccJerkMag-std()_mean* fBodyBodyGyroMag-mean()_mean* fBodyBodyGyroMag-std()_mean* fBodyBodyGyroJerkMag-mean()_mean* fBodyBodyGyroJerkMag-std()_mean### Subject Labels:
1 ... 30
### Activity Labels: * WALKING (Label 1)* WALKING_UPSTAIRS (Label 2)* WALKING_DOWNSTAIRS (Label 3)* SITTING (Label 4)* STANDING (Label 5)* LAYING (Label 6)

### Data:
* 180 rows - 6 activities done by 30 subjects.
* 68 columns - 1 activity + 1 subject + 66 measurements)## C. x_combined.txt (output of step 4) ### Identifiers* Subject: n identifier of who carried out the experiment. Total 30* Activity:  Type of activity performed when the corresponding measurements were taken. Total 6* Source: indicates the source of record: test data set or train data set### Measurements* tBodyAcc-mean()-X_mean* tBodyAcc-mean()-Y_mean* tBodyAcc-mean()-Z_mean* tBodyAcc-std()-X_mean* tBodyAcc-std()-Y_mean* tBodyAcc-std()-Z_mean* tGravityAcc-mean()-X_mean* tGravityAcc-mean()-Y_mean* tGravityAcc-mean()-Z_mean* tGravityAcc-std()-X_mean* tGravityAcc-std()-Y_mean* tGravityAcc-std()-Z_mean* tBodyAccJerk-mean()-X_mean* tBodyAccJerk-mean()-Y_mean* tBodyAccJerk-mean()-Z_mean* tBodyAccJerk-std()-X_mean* tBodyAccJerk-std()-Y_mean* tBodyAccJerk-std()-Z_mean* tBodyGyro-mean()-X_mean* tBodyGyro-mean()-Y_mean* tBodyGyro-mean()-Z_mean* tBodyGyro-std()-X_mean* tBodyGyro-std()-Y_mean* tBodyGyro-std()-Z_mean* tBodyGyroJerk-mean()-X_mean* tBodyGyroJerk-mean()-Y_mean* tBodyGyroJerk-mean()-Z_mean* tBodyGyroJerk-std()-X_mean* tBodyGyroJerk-std()-Y_mean* tBodyGyroJerk-std()-Z_mean* tBodyAccMag-mean()_mean* tBodyAccMag-std()_mean* tGravityAccMag-mean()_mean* tGravityAccMag-std()_mean* tBodyAccJerkMag-mean()_mean* tBodyAccJerkMag-std()_mean* tBodyGyroMag-mean()_mean* tBodyGyroMag-std()_mean* tBodyGyroJerkMag-mean()_mean* tBodyGyroJerkMag-std()_mean* fBodyAcc-mean()-X_mean* fBodyAcc-mean()-Y_mean* fBodyAcc-mean()-Z_mean* fBodyAcc-std()-X_mean* fBodyAcc-std()-Y_mean* fBodyAcc-std()-Z_mean* fBodyAccJerk-mean()-X_mean* fBodyAccJerk-mean()-Y_mean* fBodyAccJerk-mean()-Z_mean* fBodyAccJerk-std()-X_mean* fBodyAccJerk-std()-Y_mean* fBodyAccJerk-std()-Z_mean* fBodyGyro-mean()-X_mean* fBodyGyro-mean()-Y_mean* fBodyGyro-mean()-Z_mean* fBodyGyro-std()-X_mean* fBodyGyro-std()-Y_mean* fBodyGyro-std()-Z_mean* fBodyAccMag-mean()_mean* fBodyAccMag-std()_mean* fBodyBodyAccJerkMag-mean()_mean* fBodyBodyAccJerkMag-std()_mean* fBodyBodyGyroMag-mean()_mean* fBodyBodyGyroMag-std()_mean* fBodyBodyGyroJerkMag-mean()_mean* fBodyBodyGyroJerkMag-std()_mean
* activity
* subject
* source
### Subject Labels:
1 ... 30
### Activity Labels: * WALKING (Label 1)* WALKING_UPSTAIRS (Label 2)* WALKING_DOWNSTAIRS (Label 3)* SITTING (Label 4)* STANDING (Label 5)* LAYING (Label 6)

### Source labels:
* test: test data sub set
* train: train data sub set

### Data:
* 180 rows - 6 activities done by 30 subjects.
* 68 columns - 66 measurements + 1 activity + 1 subject + 1 source)