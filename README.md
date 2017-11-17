# gettingAndCleaningDataCoursera

This repository contains the R script, cookbook and deliverables for assignment of Coursera Getting and Cleaning Data cause.

The function run_analysis in run_analysis.R does the following.
1. delete any old output files and old directories generated previously
2. download the csv files, unzip to a sub-directory under the  current directory
3. load the measurements, subject and activity data
4. read the features to get the column name, and re-assign to the measure data
5. extract only mean and standard deviation columns, and merge to form a new dataset
6. replace activity labels by their names for the new dataset (criteria 1- 4 met)
7. generate an independent tidy data set with the average of each variable for each activity and each subject
8. write the output of step 6 and 7 to two text files

The deliverables are x_combined.txt (criteria 1 - 4) and x_combined_mean_std.txt (criteria 5)