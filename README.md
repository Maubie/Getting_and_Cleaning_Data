
CODE BOOK
================

The data produced by the run_analysis.R script, written to the tidy_data.txt file represents the average of each variable for each activity and each subject from the original raw data set found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones .

The origianl raw data set includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

Running the Script run_analysis.R
=============================================
The run_analysis script is intended to run in your working directory only if the file containing the raw data set, UCI HAR Dataset, is found within that directory. If you have not already downloaded and unzipped the raw data in your working directory, the code for doing this is contained in the script however it is commented out. Removing the ## on lines 7:10 of the script will enable this feature. (The script will change your working directory to the UCI HAR Dataset directory)

Data Transformation
====================
The run_analysis script:
        Reads the raw data
        Merges the training and the test sets to create one data set
        Extracts only the measurements on the mean and standard deviation for each measurement (any variable containg "mean" or "std" in its name is selected during this step. This is the most inclusive interpretation of the instructions for the creation of the data set.)
        Applies descriptive activity names to name the activities in the data set
        and labels the data set with descriptive variable names. 
        It then creates an independent tidy data set with the average of each variable for each activity and each subject and writes that data set to a file named tidy_data.txt in the UCI HAR Dataset directory.


Feature Selection Raw Data (UCI HAR Dataset)
===========================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. More info about the original variable may be found in the feature_info.txt file in the raw data set (UCI HAR Dataset)

TIDY_DATA.TXT DATA Variables
=============================

subject         2
        identifier of test subject with range 1:30

activity_id     1
        Code used in original data set describing subject activity during measurment
        1. Walking
        2. Walking_Upstairs
        3. Walking_Downstairs
        4. Sitting
        5. Standing
        6. Laying
        
activity_label  18
        Activities corresponding to the activity_id
        
time.accelerometer.body.mean.x  9
        The mean of the:
                estimated mean values of the
                time domain signals from the 
                accelerometer reading of the 
                body
                on the x axis

time.accelerometer.body.mean.y  9
        The mean of the:
                estimated mean values of the
                time domain signals from the 
                accelerometer reading of the 
                body
                on the y axis
 
time.accelerometer.body.mean.z  9
        The mean of the:
                estimated mean values of the
                time domain signals from the 
                accelerometer reading of the 
                body
                on the z axis

time.accelerometer.body.standarddeviation.x     9
        The mean of the:
                estimated standard deviation values of the
                time domain signals from the 
                accelerometer reading of the 
                body
                on the x axis
                
time.accelerometer.body.standarddeviation.y     9
        The mean of the:
                estimated standard deviation values of the
                time domain signals from the 
                accelerometer reading of the 
                body
                on the y axis
                
time.accelerometer.body.standarddeviation.z     9
        The mean of the:
                estimated standard deviation values of the
                time domain signals from the 
                accelerometer reading of the 
                body
                on the z axis
                
time.accelerometer.gravity.mean.x       9
        The mean of the:
                estimated mean values of the
                time domain signals from the 
                accelerometer reading of 
                gravity
                on the x axis
                
time.accelerometer.gravity.mean.y       9
        The mean of the:
                estimated mean values of the
                time domain signals from the 
                accelerometer reading of 
                gravity
                on the y axis
                
time.accelerometer.gravity.mean.z       9
        The mean of the:
                estimated mean values of the
                time domain signals from the 
                accelerometer reading of 
                gravity
                on the z axis
                
time.accelerometer.gravity.standarddeviation.x          11
        The mean of the:
                estimated standard deviation values of the
                time domain signals from the 
                accelerometer reading of 
                gravity
                on the x axis
                
time.accelerometer.gravity.standarddeviation.y  9
        The mean of the:
                estimated standard deviation values of the
                time domain signals from the 
                accelerometer reading of 
                gravity
                on the y axis
                
time.accelerometer.gravity.standarddeviation.z  9
        The mean of the:
                estimated standard deviation values of the
                time domain signals from the 
                accelerometer reading of 
                gravity
                on the z axis
                        
time.accelerometer.body.mean.jerk.x     9
        The mean of the:
                estimated mean values of the
                time domain signals from the 
                acceloration and angular velocity of the 
                body (jerk)
                on the x axis
                
time.accelerometer.body.mean.jerk.y = tBodyAccJerk.mean...Y     11
        The mean of the:
                estimated mean values of the
                time domain signals from the 
                acceloration and angular velocity of the 
                body (jerk)
                on the y axis
                
time.accelerometer.body.mean.jerk.z     9
        The mean of the:
                estimated mean values of the
                time domain signals from the 
                acceloration and angular velocity of the 
                body (jerk)
                on the z axis
                
time.accelerometer.body.standarddeviation.jerk.x        9
        The mean of the:
                estimated standard deviation values of the
                time domain signals from the 
                acceloration and angular velocity of the 
                body (jerk)
                on the x axis
                
time.accelerometer.body.standarddeviation.jerk.y        9
         The mean of the:
                estimated standard deviation values of the
                time domain signals from the 
                acceloration and angular velocity of the 
                body (jerk)
                on the y axis
                
time.accelerometer.body.standarddeviation.jerk.z        11
         The mean of the:
                estimated standard deviation values of the
                time domain signals from the 
                acceloration and angular velocity of the 
                body (jerk)
                on the z axis
                
time.gyroscope.body.mean.x      9
         The mean of the:
                estimated mean values of the
                time domain signals from the 
                gyroscope reading of the 
                body
                on the x axis
                
time.gyroscope.body.mean.y      9
        The mean of the:
                estimated mean values of the
                time domain signals from the 
                gyroscope reading of the 
                body
                on the y axis
                
time.gyroscope.body.mean.z      9
        The mean of the:
                estimated mean values of the
                time domain signals from the 
                gyroscope reading of the 
                body
                on the z axis
                
time.gyroscope.body.standarddeviation.x 9
        The mean of the:
                estimated standard deviation values of the
                time domain signals from the 
                gyroscope reading of the 
                body
                on the x axis
                
time.gyroscope.body.standarddeviation.y 9
        The mean of the:
                estimated standard deviation values of the
                time domain signals from the 
                gyroscope reading of the 
                body
                on the y axis
                
time.gyroscope.body.standarddeviation.z 9
        The mean of the:
                estimated standard deviation values of the
                time domain signals from the 
                gyroscope reading of the 
                body
                on the z axis
                
time.gyroscope.body.mean.jerk.x 9
        The mean of the:
                estimated mean values of the
                time domain signals from the 
                gyroscope and angular velocity of the 
                body (jerk)
                on the x axis
                
time.gyroscope.body.mean.jerk.y 9
        The mean of the:
                estimated mean values of the
                time domain signals from the 
                gyroscope and angular velocity of the 
                body (jerk)
                on the y axis
                
time.gyroscope.body.mean.jerk.z 9
        The mean of the:
                estimated mean values of the
                time domain signals from the 
                gyroscope and angular velocity of the 
                body (jerk)
                on the x axis
                
time.gyroscope.body.standarddeviation.jerk.x    9
         The mean of the:
                estimated standard deviation values of the
                time domain signals from the 
                acceloration and angular velocity of the 
                body (jerk)
                on the x axis
                
time.gyroscope.body.standarddeviation.jerk.y    9
         The mean of the:
                estimated standard deviation values of the
                time domain signals from the 
                acceloration and angular velocity of the 
                body (jerk)
                on the y axis
                
time.gyroscope.body.standarddeviation.jerk.z    9
         The mean of the:
                estimated standard deviation values of the
                time domain signals from the 
                acceloration and angular velocity of the 
                body (jerk)
                on the z axis
                
time.accelerometer.body.mean.magnitude  9
        The mean of the:
                Fast Fourier Transform (FFT) of the
                estimated mean values of the
                time domain signals from the 
                accelerometer reading of the 
                body on the xyz axis
        
time.accelerometer.body.standarddeviation.magnitude     9
        The mean of the:
                Fast Fourier Transform (FFT) of the
                estimated standard deviation values of the
                time domain signals from the 
                accelerometer reading of the 
                body on the xyz axis
                
time.accelerometer.gravity.mean.magnitude       9
        The mean of the:
                Fast Fourier Transform (FFT) of the
                estimated mean values of the
                time domain signals from the 
                accelerometer reading of 
                gravity on the xyz axis
                
time.accelerometer.gravity.standarddeviation.magnitude  11
        The mean of the:
                Fast Fourier Transform (FFT) of the
                estimated standard deviation values of the
                time domain signals from the 
                accelerometer reading of 
                gravity on the xyz axis
                
time.accelerometer.body.mean.jerk.magnitude     11
        The mean of the:
                Fast Fournier Transformation of the 
                estimated mean values of the
                time domain signals from the 
                acceleration and angular velocity of the 
                body (jerk)
                on the xyz axis
                
time.accelerometer.body.standarddeviation.jerk.magnitude        11
        The mean of the:
                Fast Fournier Transformation of the 
                estimated standard deviation values of the
                time domain signals from the 
                acceleration and angular velocity of the 
                body (jerk)
                on the xyz axis
                
time.gyroscope.body.mean.magnitude      9
        The mean of the:
                Fast Fourier Transform (FFT) of the
                estimated mean values of the
                time domain signals from the 
                gyroscope reading of the 
                body on the xyz axis
        
time.gyroscope.body.standarddeviation.magnitude 9
         The mean of the:
                Fast Fourier Transform (FFT) of the
                estimated standard deviation values of the
                time domain signals from the 
                gyroscope reading of the 
                body on the xyz axis
                
time.gyroscope.body.mean.jerk.magnitude 9
        The mean of the:
                Fast Fourier Transform (FFT) of the
                estimated mean values of the
                time domain signals from the 
                gyroscope and angular velocity of the 
                body (jerk)
                on the xyz axis
                
time.gyroscope.body.standarddeviation.jerk.magnitude    9
        The mean of the:
                Fast Fourier Transform (FFT) of the
                estimated standard deviation values of the
                time domain signals from the 
                gyroscope and angular velocity of the 
                body (jerk)
                on the xyz axis
                
frequency.accelerometer.body.mean.x     9
        The mean of the:
                estimated mean values of the
                frequency domain signals from the 
                accelerometer reading of the 
                body
                on the x axis
                
frequency.accelerometer.body.mean.y     9
        The mean of the:
                estimated mean values of the
                frequency domain signals from the 
                accelerometer reading of the 
                body
                on the y axis
                
frequency.accelerometer.body.mean.z     9
        The mean of the:
                estimated mean values of the
                frequency domain signals from the 
                accelerometer reading of the 
                body
                on the z axis
                
frequency.accelerometer.body.standarddeviation.x        9
        The mean of the:
                estimated standard deviation values of the
                frequency domain signals from the 
                accelerometer reading of the 
                body
                on the x axis
                
frequency.accelerometer.body.standarddeviation.y        9
        The mean of the:
                estimated standard deviation values of the
                frequency domain signals from the 
                accelerometer reading of the 
                body
                on the y axis
                
frequency.accelerometer.body.standarddeviation.z        9
        The mean of the:
                estimated standard deviation values of the
                frequency domain signals from the 
                accelerometer reading of the 
                body
                on the z axis
                
frequency.accelerometer.body.meanfrequency.x    9
        The mean of the:
                estimated weighted average of the frequency component values of the
                frequency domain signals from the 
                accelerometer reading of the 
                body
                on the x axis
                
frequency.accelerometer.body.meanfrequency.y = fBodyAcc.meanFreq...Y    11
        The mean of the:
                estimated weighted average of the frequency component values of the
                frequency domain signals from the 
                accelerometer reading of the 
                body
                on the y axis
                
frequency.accelerometer.body.meanfrequency.z    9
        The mean of the:
                estimated weighted average of the frequency component values of the
                frequency domain signals from the 
                accelerometer reading of the 
                body
                on the z axis
                
frequency.accelerometer.body.mean.jerk.x        9
        The mean of the:
                estimated mean values of the
                frequency domain signals from the 
                acceloration and angular velocity of the 
                body (jerk)
                on the x axis
                
frequency.accelerometer.body.mean.jerk.y        9
         The mean of the:
                estimated mean values of the
                frequency domain signals from the 
                acceloration and angular velocity of the 
                body (jerk)
                on the y axis
                
frequency.accelerometer.body.mean.jerk.z        9
         The mean of the:
                estimated mean values of the
                frequency domain signals from the 
                acceloration and angular velocity of the 
                body (jerk)
                on the z axis
                
frequency.accelerometer.body.standarddeviation.jerk.x   9
        The mean of the:
                estimated standard deviation values of the
                frequency domain signals from the 
                acceloration and angular velocity of the 
                body (jerk)
                on the x axis
                
frequency.accelerometer.body.standarddeviation.jerk.y   9
        The mean of the:
                estimated standard deviation values of the
                frequency domain signals from the 
                acceloration and angular velocity of the 
                body (jerk)
                on the y axis
                
frequency.accelerometer.body.standarddeviation.jerk.z   9
        The mean of the:
                estimated standard deviation values of the
                frequency domain signals from the 
                acceloration and angular velocity of the 
                body (jerk)
                on the x axis
                
frequency.accelerometer.body.meanfrequency.jerk.x       9
        The mean of the:
                estimated mean frequency values of the
                frequency domain signals from the 
                acceloration and angular velocity of the 
                body (jerk)
                on the x axis
                
frequency.accelerometer.body.meanfrequency.jerk.y       9
        The mean of the:
                estimated mean frequency values of the
                frequency domain signals from the 
                acceloration and angular velocity of the 
                body (jerk)
                on the y axis
                
frequency.accelerometer.body.meanfrequency.jerk.z       9
        The mean of the:
                estimated mean frequency values of the
                frequency domain signals from the 
                acceloration and angular velocity of the 
                body (jerk)
                on the z axis
                
frequency.gyroscope.body.mean.x 9
        The mean of the:
                estimated mean values of the
                frequency domain signals from the 
                gyroscope reading of the 
                body
                on the x axis
                
frequency.gyroscope.body.mean.y 9
        The mean of the:
                estimated mean values of the
                frequency domain signals from the 
                gyroscope reading of the 
                body
                on the y axis
                
frequency.gyroscope.body.mean.z 9
        The mean of the:
                estimated mean values of the
                frequency domain signals from the 
                gyroscope reading of the 
                body
                on the z axis
                
frequency.gyroscope.body.standarddeviation.x    9
        The mean of the:
                estimated standard deviation values of the
                frequency domain signals from the 
                gyroscope reading of the 
                body
                on the x axis
                
frequency.gyroscope.body.standarddeviation.y    9
        The mean of the:
                estimated standard deviation values of the
                frequency domain signals from the 
                gyroscope reading of the 
                body
                on the y axis
                
frequency.gyroscope.body.standarddeviation.z    9
        The mean of the:
                estimated standard deviation values of the
                frequency domain signals from the 
                gyroscope reading of the 
                body
                on the z axis
                
frequency.gyroscope.body.meanfrequency.x        9
        The mean of the:
                estimated standard mean frequency values of the
                frequency domain signals from the 
                gyroscope reading of the 
                body
                on the x axis
                
frequency.gyroscope.body.meanfrequency.y        9
         The mean of the:
                estimated standard mean frequency values of the
                frequency domain signals from the 
                gyroscope reading of the 
                body
                on the y axis
                
frequency.gyroscope.body.meanfrequency.z        11
         The mean of the:
                estimated standard mean frequency values of the
                frequency domain signals from the 
                gyroscope reading of the 
                body
                on the z axis
                
frequency.accelerometer.body.mean.magnitude     9
        The mean of the:
                Fast Fourier Transform (FFT) of the
                estimated mean values of the
                frequency domain signals from the 
                accelerometer reading of 
                gravity on the xyz axis
                
frequency.accelerometer.body.standarddeviation.magnitude        9
        The mean of the:
                Fast Fourier Transform (FFT) of the
                estimated standard deviation values of the
                frequency domain signals from the 
                accelerometer reading of 
                gravity on the xyz axis
                
frequency.accelerometer.body.meanfrequency.magnitude    11
        The mean of the:
                Fast Fourier Transform (FFT) of the
                estimated mean frequency values of the
                frequency domain signals from the 
                accelerometer reading of 
                gravity on the xyz axis
                
frequency.accelerometer.body.mean.bodyjerk.magnitude    9
         The mean of the:
                Fast Fournier Transformation of the 
                estimated mean values of the
                frequency domain signals from the 
                acceleration and angular velocity of the 
                body (jerk)
                on the xyz axis
                
frequency.accelerometer.body.standarddeviation.bodyjerk.magnitude       9
         The mean of the:
                Fast Fournier Transformation of the 
                estimated standard deviation values of the
                frequency domain signals from the 
                acceleration and angular velocity of the 
                body (jerk)
                on the xyz axis
                
frequency.accelerometer.body.bodymeanfrequency.magnitude        9
          The mean of the:
                Fast Fourier Transform (FFT) of the
                estimated body mean frequency values of the
                frequency domain signals from the 
                accelerometer reading of 
                gravity on the xyz axis
                
frequency.gyroscope.body.bodymean.magnitude     9
        The mean of the:
                Fast Fourier Transform (FFT) of the
                estimated body mean values of the
                frequency domain signals from the 
                gyroscope reading of 
                gravity on the xyz axis
                
frequency.gyroscope.body.bodystandarddeviation.magnitude        9
        The mean of the:
                Fast Fourier Transform (FFT) of the
                estimated body standard deviation values of the
                frequency domain signals from the 
                accelerometer reading of 
                gravity on the xyz axis
                
frequency.gyroscope.body.bodymeanfrequency.magnitude    11
        The mean of the:
                Fast Fourier Transform (FFT) of the
                estimated body mean frequency values of the
                frequency domain signals from the 
                gyroscope reading of 
                gravity on the xyz axis
                
frequency.gyroscope.body.bodymean.jerk.magnitude        9
        The mean of the:
                Fast Fournier Transformation of the 
                estimated bodymean values of the
                frequency domain signals from the 
                gyroscope of acceleration and angular velocity of the 
                body (jerk)
                on the xyz axis
                
frequency.gyroscope.body.bodystandarddeviation.jerk.magnitude   9
        The mean of the:
                Fast Fournier Transformation of the 
                estimated standard deviation values of the
                frequency domain signals from the 
                gyroscope of acceleration and angular velocity of the 
                body (jerk)
                on the xyz axis
                
frequency.gyroscope.body.bodymeanfrequency.jerk.magnitude       9
        The mean of the:
                Fast Fournier Transformation of the 
                estimated body mean frequency values of the
                frequency domain signals from the 
                gyroscope of acceleration and angular velocity of the 
                body (jerk)
                on the xyz axis