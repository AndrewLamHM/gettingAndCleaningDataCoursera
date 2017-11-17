run_analysis <- function()  {
    
    library(tictoc)
    tic("Tidying Data")
    ## Check if old output CSV files exist, and delete if yes
    if(file.exists("./sourceDataThree")) {unlink("./sourceDataThree", recursive = TRUE)}
    if(file.exists("./UCI HAR Dataset")) {unlink("./UCI HAR Dataset", recursive = TRUE)}
    
    if(file.exists("./x_combined.txt")) {file.remove("./x_combined.txt")}
    if(file.exists("./x_combined_mean_std.txt")) {file.remove("./x_combined_mean_std.txt")}
    
    ## Create a directory, download zip file to the directory, and extract the zip
    if(!file.exists("./sourceDataThree")) {dir.create("./sourceDataThree")}
    path <- "./sourceDataThree"
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileUrl, file.path(path, "dataFiles.zip"), method = "curl")
    unzip(zipfile = file.path(path, "dataFiles.zip"))
    
    library(dplyr)
    ##Load measurement, subject data, activity data
    xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
    ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
    subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
    
    xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
    ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
    subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
    
    activities <- as.list(read.table("./UCI HAR Dataset/activity_labels.txt"))
    activity_name <- activity_name <- as.character(activities[[2]])
    
    ## Add column names per features table
    ## 4. Appropriately labels the data set with descriptive variable names
    allVariables <- read.table("./UCI HAR Dataset/features.txt")
    colnames(xtest) <- paste0(allVariables$V2); colnames(xtrain) <- paste0(allVariables$V2)
    colnames(subject_test) <- "subject"; colnames(subject_train) <- "subject"
    colnames(ytest) <- "activity";  colnames(ytrain) <- "activity"
    
    xtrain_full <- cbind(xtrain,ytrain) ;  xtrain_full <- cbind(xtrain_full, subject_train)
    xtest_full <- cbind(xtest, ytest) ; xtest_full <- cbind(xtest_full, subject_test)
    
    xtrain_full <- cbind(xtrain_full, source = "train", stringsAsFactors=FALSE) 
    xtest_full <- cbind(xtest_full, source = "test", stringsAsFactors=FALSE)
    
    ##  Check which columns are mean or standard deviation, and extract only those columns to two new sets
    ## 2. Extracts only the measurements on the mean and standard deviation for each measurement  
    meanstdVariables <- allVariables[grep("(mean\\(\\))+|(std\\(\\))+", allVariables$V2),]
    non_meanstd_variables <- allVariables[-c(meanstdVariables$V1),1]
    xtrain_filtered <- xtrain_full[,-c(non_meanstd_variables)]
    xtest_filtered <- xtest_full[,-c(non_meanstd_variables)]
    
    ## Combine train and test data sets ** 1. erges the training and the test sets to create one data set
    filteredData <- rbind(xtrain_filtered, xtest_filtered)
    
    ## Edit values of activity by their names in the combined set
    ## 3. Uses descriptive activity names to name the activities in the data set
    filteredData$activity <- activities$V2[match(filteredData$activity, activities$V1)]
    
    ## Find the mean by each activity and each subject
    ## 5. Create a second, independent tidy data set with average of each subject and each activity
    filteredDataMean <- filteredData %>% group_by(activity, subject) %>%
        summarise_at(.vars = names(.)[1:66],
                     .funs = c(mean="mean")) %>%
        arrange(subject, activity)
    
    ## Write the results to CSV files
    write.table(filteredData, file = "x_combined.txt", sep = ";", quote = FALSE, row.names = FALSE);
    write.table(filteredDataMean, file = "x_combined_mean_std.txt", sep = ";", quote = FALSE, row.names = FALSE);
    
    toc()
    message( cat("-------Tidy data is ready-------", date()))
}