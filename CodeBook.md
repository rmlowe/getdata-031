# Code book

## How the data was obtained

This data set is based on the UCI Machine Learning Repository's [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The original data set is [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The training and test sets were merged into a single data set, from which all variables except means and standard deviations were removed. Subject identifiers and descriptive activity labels were merged into the data set. The final data set consists of means taken over each combination of subject, activity and variable. Note that the variables have been given more meaningful names.

## Variables

The variables in the data set are as follows.

* **Activity:** One of: `WALKING`, `WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING`, `LAYING`.
* **Subject:** Integer identifier for the subject.
* **Variable:** One of the mean or standard deviation measures described below.
* **Average:** The mean of all observations for a particular combination of activity, subject and variable.

## Measures

Below are the measure labels appearing in **Variable** column.

* **timeBodyAccelerometer-mean-X:** Mean value of body acceleration time domain signal, *x*-axis.
* **timeBodyAccelerometer-mean-Y:** Mean value of body acceleration time domain signal, *y*-axis.
* **timeBodyAccelerometer-mean-Z:** Mean value of body acceleration time domain signal, *z*-axis.
* **timeBodyAccelerometer-std-X:** Standard deviation of body acceleration time domain signal, *x*-axis.
* **timeBodyAccelerometer-std-Y:** Standard deviation of body acceleration time domain signal, *y*-axis.
* **timeBodyAccelerometer-std-Z:** Standard deviation of body acceleration time domain signal, *z*-axis.
* **timeGravityAccelerometer-mean-X:** Mean value of gravity acceleration time domain signal, *x*-axis.
* **timeGravityAccelerometer-mean-Y:** Mean value of gravity acceleration time domain signal, *y*-axis.
* **timeGravityAccelerometer-mean-Z:** Mean value of gravity acceleration time domain signal, *z*-axis.
* **timeGravityAccelerometer-std-X:** Standard deviation of gravity acceleration time domain signal, *x*-axis.
* **timeGravityAccelerometer-std-Y:** Standard deviation of gravity acceleration time domain signal, *y*-axis.
* **timeGravityAccelerometer-std-Z:** Standard deviation of gravity acceleration time domain signal, *z*-axis.
* **timeBodyAccelerometerJerk-mean-X:** Mean value of body acceleration time domain jerk signal, *x*-axis.
* **timeBodyAccelerometerJerk-mean-Y:** Mean value of body acceleration time domain jerk signal, *y*-axis.
* **timeBodyAccelerometerJerk-mean-Z:** Mean value of body acceleration time domain jerk signal, *z*-axis.
* **timeBodyAccelerometerJerk-std-X:** Standard deviation of body acceleration time domain jerk signal, *x*-axis.
* **timeBodyAccelerometerJerk-std-Y:** Standard deviation of body acceleration time domain jerk signal, *y*-axis.
* **timeBodyAccelerometerJerk-std-Z:** Standard deviation of body acceleration time domain jerk signal, *z*-axis.
* **timeBodyGyroscope-mean-X:** Mean value of gyroscope time domain signal, *x*-axis.
* **timeBodyGyroscope-mean-Y:** Mean value of gyroscope time domain signal, *y*-axis.
* **timeBodyGyroscope-mean-Z:** Mean value of gyroscope time domain signal, *z*-axis.
* **timeBodyGyroscope-std-X:** Standard deviation of gyroscope time domain signal, *x*-axis.
* **timeBodyGyroscope-std-Y:** Standard deviation of gyroscope time domain signal, *y*-axis.
* **timeBodyGyroscope-std-Z:** Standard deviation of gyroscope time domain signal, *z*-axis.
* **timeBodyGyroscopeJerk-mean-X:** Mean value of gyroscope time domain jerk signal, *x*-axis.
* **timeBodyGyroscopeJerk-mean-Y:** Mean value of gyroscope time domain jerk signal, *y*-axis.
* **timeBodyGyroscopeJerk-mean-Z:** Mean value of gyroscope time domain jerk signal, *z*-axis.
* **timeBodyGyroscopeJerk-std-X:** Standard deviation of gyroscope time domain jerk signal, *x*-axis.
* **timeBodyGyroscopeJerk-std-Y:** Standard deviation of gyroscope time domain jerk signal, *y*-axis.
* **timeBodyGyroscopeJerk-std-Z:** Standard deviation of gyroscope time domain jerk signal, *z*-axis.
* **timeBodyAccelerometerMagnitude-mean:** Mean value of body acceleration time domain signal, magnitude.
* **timeBodyAccelerometerMagnitude-std:** Standard deviation of body acceleration time domain signal, magnitude.
* **timeGravityAccelerometerMagnitude-mean:** Mean value of gravity acceleration time domain signal, magnitude.
* **timeGravityAccelerometerMagnitude-std:** Standard deviation of gravity acceleration time domain signal, magnitude.
* **timeBodyAccelerometerJerkMagnitude-mean:** Mean value of body acceleration time domain jerk signal, magnitude.
* **timeBodyAccelerometerJerkMagnitude-std:** Standard deviation of body acceleration time domain jerk signal, magnitude.
* **timeBodyGyroscopeMagnitude-mean:** Mean value of gyroscope time domain signal, magnitude.
* **timeBodyGyroscopeMagnitude-std:** Standard deviation of gyroscope time domain signal, *x*-axis.
* **timeBodyGyroscopeJerkMagnitude-mean:** Mean value of gyroscope time domain jerk signal, magnitude.
* **timeBodyGyroscopeJerkMagnitude-std:** Standard deviation of gyroscope time domain jerk signal, magnitude.
* **frequencyBodyAccelerometer-mean-X:** Mean value of body acceleration frequency domain signal, *x*-axis.
* **frequencyBodyAccelerometer-mean-Y:** Mean value of body acceleration frequency domain signal, *y*-axis.
* **frequencyBodyAccelerometer-mean-Z:** Mean value of body acceleration frequency domain signal, *z*-axis.
* **frequencyBodyAccelerometer-std-X:** Standard deviation of body acceleration frequency domain signal, *x*-axis.
* **frequencyBodyAccelerometer-std-Y:** Standard deviation of body acceleration frequency domain signal, *y*-axis.
* **frequencyBodyAccelerometer-std-Z:** Standard deviation of body acceleration frequency domain signal, *z*-axis.
* **frequencyBodyAccelerometerJerk-mean-X:** Mean value of body acceleration frequency domain jerk signal, *x*-axis.
* **frequencyBodyAccelerometerJerk-mean-Y:** Mean value of body acceleration frequency domain jerk signal, *y*-axis.
* **frequencyBodyAccelerometerJerk-mean-Z:** Mean value of body acceleration frequency domain jerk signal, *z*-axis.
* **frequencyBodyAccelerometerJerk-std-X:** Standard deviation of body acceleration frequency domain jerk signal, *x*-axis.
* **frequencyBodyAccelerometerJerk-std-Y:** Standard deviation of body acceleration frequency domain jerk signal, *y*-axis.
* **frequencyBodyAccelerometerJerk-std-Z:** Standard deviation of body acceleration frequency domain jerk signal, *z*-axis.
* **frequencyBodyGyroscope-mean-X:** Mean value of gyroscope frequency domain signal, *x*-axis.
* **frequencyBodyGyroscope-mean-Y:** Mean value of gyroscope frequency domain signal, *y*-axis.
* **frequencyBodyGyroscope-mean-Z:** Mean value of gyroscope frequency domain signal, *z*-axis.
* **frequencyBodyGyroscope-std-X:** Standard deviation of gyroscope frequency domain signal, *x*-axis.
* **frequencyBodyGyroscope-std-Y:** Standard deviation of gyroscope frequency domain signal, *y*-axis.
* **frequencyBodyGyroscope-std-Z:** Standard deviation of gyroscope frequency domain signal, *z*-axis.
* **frequencyBodyAccelerometerMagnitude-mean:** Mean value of body acceleration frequency domain signal, magnitude.
* **frequencyBodyAccelerometerMagnitude-std:** Standard deviation of body acceleration frequency domain signal, magnitude.
* **frequencyBodyAccelerometerJerkMagnitude-mean:** Mean value of body acceleration frequency domain jerk signal, magnitude.
* **frequencyBodyAccelerometerJerkMagnitude-std:** Standard deviation of body acceleration frequency domain jerk signal, magnitude.
* **frequencyBodyGyroscopeMagnitude-mean:** Mean value of gyroscope frequency domain signal, magnitude.
* **frequencyBodyGyroscopeMagnitude-std:** Standard deviation of gyroscope frequency domain signal, magnitude.
* **frequencyBodyGyroscopeJerkMagnitude-mean:** Mean value of gyroscope frequency domain jerk signal, magnitude.
* **frequencyBodyGyroscopeJerkMagnitude-std:** Standard deviation of gyroscope frequency domain jerk signal, magnitude.
