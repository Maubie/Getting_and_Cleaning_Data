run_analysis <- function() {
       ##load necessary libraries
        library(downloader)
        library(plyr)
        library(dplyr)
        library(data.table)
        ##download zip file with datafiles using downloader package
        ##download("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", mode="wb")
        ##unzip the zip file
        ##unzip ("getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
        setwd("./UCI HAR Dataset")
        
        ##read activity labels
        activity_labels <- read.table("activity_labels.txt")
        
        ## read features (data column names)
        features <- read.table("features.txt")[,2]
        features2 <- make.names(features)
        extract_features <- grepl("mean|std", features2)
        
        
        ## read test data
        X_test <- read.table("./test/X_test.txt")
        y_test <- read.table("./test/y_test.txt")
        subject_test <- read.table("./test/subject_test.txt")
        
        #name columns in test data
        names(X_test) = features2
        names(activity_labels) = c("activity_id", "activity_label")
        names(y_test) = c("activity_id")
        names(subject_test) = c("subject")
        
        #extract mean and std features from X_test
        X_test = X_test[,extract_features]
        
        #combine Activity_labels and y_test
        y_test_labeled <- join(y_test, activity_labels, by="activity_id")
        
        #bind test data into one data.frame
        test_data <- cbind(subject_test, y_test_labeled, X_test)
      
        ## read train data
        X_train <- read.table("./train/X_train.txt")
        y_train <- read.table("./train/y_train.txt")
        subject_train <- read.table("./train/subject_train.txt")
        
        #name columns in train data
        names(X_train) = features2
        names(y_train) = c("activity_id")
        names(subject_train) = c("subject")
        
        #extract mean and std features from X_train
        X_train = X_train[,extract_features]
        
        #combine Activity_labels and y_train
        y_train_labeled <- join(y_train, activity_labels, by="activity_id")
        
        #bind train data into one data.frame
        train_data <- cbind(subject_train, y_train_labeled, X_train)
        
        #combine test and train data to form question 4 dataset
        combined_data <- rbind(test_data, train_data)
        combined_data <- arrange(combined_data, subject, activity_id)
        
        #group by subject and activity and then take the mean of each variable
        combined_data2 <- combined_data %>% group_by (subject, activity_id) %>% summarise_each(funs(mean), -activity_label)
        
        #add back in activity_labels
        combined_data2_labeled <- join(combined_data2,activity_labels, by="activity_id")
        
        #create the tidy data set
        tidy_data <- combined_data2_labeled[,c(1:2, 82, 3:81)]
        
        #rename variables
        tidy_data <- rename(tidy_data, time.accelerometer.body.mean.x = tBodyAcc.mean...X, time.accelerometer.body.mean.y = tBodyAcc.mean...Y, time.accelerometer.body.mean.z = tBodyAcc.mean...Z, time.accelerometer.body.standarddeviation.x=tBodyAcc.std...X, time.accelerometer.body.standarddeviation.y = tBodyAcc.std...Y, time.accelerometer.body.standarddeviation.z = tBodyAcc.std...Z, time.accelerometer.gravity.mean.x = tGravityAcc.mean...X, time.accelerometer.gravity.mean.y = tGravityAcc.mean...Y, time.accelerometer.gravity.mean.z = tGravityAcc.mean...Z, time.accelerometer.gravity.standarddeviation.x = tGravityAcc.std...X, time.accelerometer.gravity.standarddeviation.y = tGravityAcc.std...Y, time.accelerometer.gravity.standarddeviation.z = tGravityAcc.std...Z, time.accelerometer.body.mean.jerk.x = tBodyAccJerk.mean...X, time.accelerometer.body.mean.jerk.y = tBodyAccJerk.mean...Y, time.accelerometer.body.mean.jerk.z = tBodyAccJerk.mean...Z, time.accelerometer.body.standarddeviation.jerk.x = tBodyAccJerk.std...X, time.accelerometer.body.standarddeviation.jerk.y = tBodyAccJerk.std...Y, time.accelerometer.body.standarddeviation.jerk.z = tBodyAccJerk.std...Z, time.gyroscope.body.mean.x = tBodyGyro.mean...X, time.gyroscope.body.mean.y = tBodyGyro.mean...Y, time.gyroscope.body.mean.z = tBodyGyro.mean...Z, time.gyroscope.body.standarddeviation.x = tBodyGyro.std...X, time.gyroscope.body.standarddeviation.y = tBodyGyro.std...Y, time.gyroscope.body.standarddeviation.z = tBodyGyro.std...Z, time.gyroscope.body.mean.jerk.x = tBodyGyroJerk.mean...X, time.gyroscope.body.mean.jerk.y = tBodyGyroJerk.mean...Y, time.gyroscope.body.mean.jerk.z = tBodyGyroJerk.mean...Z, time.gyroscope.body.standarddeviation.jerk.x = tBodyGyroJerk.std...X, time.gyroscope.body.standarddeviation.jerk.y = tBodyGyroJerk.std...Y, time.gyroscope.body.standarddeviation.jerk.z = tBodyGyroJerk.std...Z, time.accelerometer.body.mean.magnitude = tBodyAccMag.mean.., time.accelerometer.body.standarddeviation.magnitude = tBodyAccMag.std.., time.accelerometer.gravity.mean.magnitude = tGravityAccMag.mean.., time.accelerometer.gravity.standarddeviation.magnitude = tGravityAccMag.std.., time.accelerometer.body.mean.jerk.magnitude = tBodyAccJerkMag.mean.., time.accelerometer.body.standarddeviation.jerk.magnitude = tBodyAccJerkMag.std.., time.gyroscope.body.mean.magnitude = tBodyGyroMag.mean.., time.gyroscope.body.standarddeviation.magnitude = tBodyGyroMag.std.., time.gyroscope.body.mean.jerk.magnitude = tBodyGyroJerkMag.mean.., time.gyroscope.body.standarddeviation.jerk.magnitude = tBodyGyroJerkMag.std.., frequency.accelerometer.body.mean.x = fBodyAcc.mean...X, frequency.accelerometer.body.mean.y = fBodyAcc.mean...Y, frequency.accelerometer.body.mean.z = fBodyAcc.mean...Z, frequency.accelerometer.body.standarddeviation.x = fBodyAcc.std...X, frequency.accelerometer.body.standarddeviation.y = fBodyAcc.std...Y, frequency.accelerometer.body.standarddeviation.z = fBodyAcc.std...Z, frequency.accelerometer.body.meanfrequency.x = fBodyAcc.meanFreq...X, frequency.accelerometer.body.meanfrequency.y = fBodyAcc.meanFreq...Y, frequency.accelerometer.body.meanfrequency.z = fBodyAcc.meanFreq...Z, frequency.accelerometer.body.mean.jerk.x = fBodyAccJerk.mean...X, frequency.accelerometer.body.mean.jerk.y = fBodyAccJerk.mean...Y, frequency.accelerometer.body.mean.jerk.z = fBodyAccJerk.mean...Z, frequency.accelerometer.body.standarddeviation.jerk.x = fBodyAccJerk.std...X, frequency.accelerometer.body.standarddeviation.jerk.y = fBodyAccJerk.std...Y, frequency.accelerometer.body.standarddeviation.jerk.z = fBodyAccJerk.std...Z, frequency.accelerometer.body.meanfrequency.jerk.x = fBodyAcc.meanFreq...X, frequency.accelerometer.body.meanfrequency.jerk.y = fBodyAccJerk.meanFreq...Y, frequency.accelerometer.body.meanfrequency.jerk.z = fBodyAccJerk.meanFreq...Z, frequency.gyroscope.body.mean.x = fBodyGyro.mean...X, frequency.gyroscope.body.mean.y = fBodyGyro.mean...Y, frequency.gyroscope.body.mean.z = fBodyGyro.mean...Z, frequency.gyroscope.body.standarddeviation.x = fBodyGyro.std...X, frequency.gyroscope.body.standarddeviation.y = fBodyGyro.std...Y, frequency.gyroscope.body.standarddeviation.z = fBodyGyro.std...Z, frequency.gyroscope.body.meanfrequency.x = fBodyGyro.meanFreq...X, frequency.gyroscope.body.meanfrequency.y = fBodyGyro.meanFreq...Y, frequency.gyroscope.body.meanfrequency.z = fBodyGyro.meanFreq...Z, frequency.accelerometer.body.mean.magnitude = fBodyAccMag.mean.., frequency.accelerometer.body.standarddeviation.magnitude = fBodyAccMag.std.., frequency.accelerometer.body.meanfrequency.magnitude = fBodyAccMag.meanFreq.., frequency.accelerometer.body.mean.bodyjerk.magnitude = fBodyBodyAccJerkMag.mean.., frequency.accelerometer.body.standarddeviation.bodyjerk.magnitude = fBodyBodyAccJerkMag.std.., frequency.accelerometer.body.bodymeanfrequency.magnitude = fBodyBodyAccJerkMag.meanFreq.., frequency.gyroscope.body.bodymean.magnitude = fBodyBodyGyroMag.mean.., frequency.gyroscope.body.bodystandarddeviation.magnitude = fBodyBodyGyroMag.std.., frequency.gyroscope.body.bodymeanfrequency.magnitude = fBodyBodyGyroMag.meanFreq.., frequency.gyroscope.body.bodymean.jerk.magnitude = fBodyBodyGyroJerkMag.mean.., frequency.gyroscope.body.bodystandarddeviation.jerk.magnitude = fBodyBodyGyroJerkMag.std.., frequency.gyroscope.body.bodymeanfrequency.jerk.magnitude = fBodyBodyGyroJerkMag.meanFreq..)

        #write the dataset
        write.table(tidy_data, file = "./tidy_data.txt", row.names=FALSE)
}



