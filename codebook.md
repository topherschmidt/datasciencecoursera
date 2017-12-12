## Data Collection Description

Chris Schmidt  
PRESENTATION OF BODY MOVEMENT STUDY DATA IN "TIDY DATA" FORMAT  

SUMMARY: The purpose of this data collection is to present the data collected for the "Human Activity Recognition Using Smartphones Dataset Version 1.0 " study.  Data are joined from the original data set, and only measurements pertaining to mean and standard deviation are retained in the final data set.  

EXTENT OF COLLECTION: 1 data file + run_analysis.R processing script + ReadMe.md + this codebook  

EXTENT OF PROCESSING: Join and reshape data, calculate mean of each subject/activity/feature.  

DATA FORMAT: Records with space " " separated values.  


 Part 1: summary_data_set.txt  (sumarized detail data, only one record per subject/activity) 
     File Structure: rectangular  
     Cases: 180  
     Variables: 81  
     Records Per Case: 1  
     
 Part 2: codebook for all parts  
 
 

Codebook for summary_data_set.txt

Variable Name | Variable | Values or Explanation   
------- | ---------- | --------------------------------------------:
subjectid | Unique id for each subject in the experiment | Unique id for subject in the experiment.  Possible values range 1-30
activityname | Descripton of activity performed by subject | Description of one of six possible activities performed during the experiment.  Possible values are: WALKING  WALKING_UPSTAIRS  WALKING_DOWNSTAIRS  SITTING  STANDING  LAYING  
tBodyAcc-mean()-X  | Time body acceleration of X axis - mean | bound -1 to 1
tBodyAcc-mean()-Y | Time body acceleration of Y axis - mean | bound -1 to 1
tBodyAcc-mean()-Z | Time body acceleration of Z axis - mean |  bound -1 to 1
tBodyAcc-std()-X | Time body acceleration of X axis - std |  bound -1 to 1
tBodyAcc-std()-Y | Time body acceleration of Y axis - std |  bound -1 to 1
tBodyAcc-std()-Z | Time body acceleration of Z axis - std |  bound -1 to 1
tGravityAcc-mean()-X | Time gravity acceleration of X axis - mean | bound -1 to 1
tGravityAcc-mean()-Y | Time gravity acceleration of Y axis - mean | bound -1 to 1
tGravityAcc-mean()-Z | Time gravity acceleration of Z axis - mean | bound -1 to 1
tGravityAcc-std()-X | Time gravity acceleration of X axis - std | bound -1 to 1
tGravityAcc-std()-Y | Time gravity acceleration of Y axis - std | bound -1 to 1
tGravityAcc-std()-Z | Time gravity acceleration of Z axis - std | bound -1 to 1
tBodyAccJerk-mean()-X | Time body acceleration jerk signal X axis - mean | bound -1 to 1
tBodyAccJerk-mean()-Y | Time body acceleration jerk signal Y axis - mean | bound -1 to 1
tBodyAccJerk-mean()-Z | Time body acceleration jerk signal Z axis - mean | bound -1 to 1
tBodyAccJerk-std()-X | Time body acceleration jerk signal X axis - std | bound -1 to 1
tBodyAccJerk-std()-Y | Time body acceleration jerk signal Y axis - std | bound -1 to 1
tBodyAccJerk-std()-Z | Time body acceleration jerk signal Z axis - std | bound -1 to 1
tBodyGyro-mean()-X | Time body gyroscope signal X axis - mean | bound -1 to 1
tBodyGyro-mean()-Y | Time body gyroscope signal Y axis - mean | bound -1 to 1
tBodyGyro-mean()-Z | Time body gyroscope signal Z axis - mean | bound -1 to 1
tBodyGyro-std()-X | Time body gyroscope signal X axis - std | bound -1 to 1
tBodyGyro-std()-Y | Time body gyroscope signal Y axis - std | bound -1 to 1
tBodyGyro-std()-Z | Time body gyroscope signal Z axis - std | bound -1 to 1
tBodyGyroJerk-mean()-X | Time body gyroscope jerk signal X axis - mean | bound -1 to -1
tBodyGyroJerk-mean()-Y | Time body gyroscope jerk signal Y axis - mean | bound -1 to -1
tBodyGyroJerk-mean()-Z | Time body gyroscope jerk signal Z axis - mean | bound -1 to -1
tBodyGyroJerk-std()-X | Time body gyroscope jerk signal X axis - std | bound -1 to -1
tBodyGyroJerk-std()-Y | Time body gyroscope jerk signal Y axis - std | bound -1 to -1
tBodyGyroJerk-std()-Z | Time body gyroscope jerk signal Z axis - std | bound -1 to -1
tBodyAccMag-mean() | Magnitude of time body acceleration - mean | bound -1 to 1
tBodyAccMag-std() | Magnitude of time body acceleration - std | bound -1 to 1
tGravityAccMag-mean() | Magnitude of time gravity acceleration - mean | bound -1 to 1
tGravityAccMag-std() | Magnitude of time gravity acceleration - std | bound -1 to 1
tBodyAccJerkMag-mean() | Magnitude of time body acceleration jerk - mean | bound -1 to 1
tBodyAccJerkMag-std() | Magnitude of time body acceleration jerk - std | bound -1 to 1
tBodyGyroMag-mean() | Magnitude of time body gyroscope - mean | bound -1 to 1
tBodyGyroMag-std() | Magnitude of time body gyroscope - std | bound -1 to 1
tBodyGyroJerkMag-mean() | Magnitude of time body gyroscope jerk - mean | bound -1 to 1
tBodyGyroJerkMag-std() | Magnitude of time body gyroscope jerk - std | bound -1 to 1
fBodyAcc-mean()-X  | Frequency Domain body acceleration of X axis - mean | bound -1 to 1
fBodyAcc-mean()-Y | Frequency Domain body acceleration of Y axis - mean | bound -1 to 1
fBodyAcc-mean()-Z | Frequency Domain body acceleration of Z axis - mean | bound -1 to 1
fBodyAcc-std()-X | Frequency Domain body acceleration of X axis - std | bound -1 to 1
fBodyAcc-std()-Y | Frequency Domain body acceleration of Y axis - std | bound -1 to 1
fBodyAcc-std()-Z | Frequency Domain body acceleration of Z axis - std | bound -1 to 1
fBodyAcc-meanFreq()-X | Frequency Domain body acceleration mean frequency of X axis | bound -1 to 1
fBodyAcc-meanFreq()-Y | Frequency Domain body acceleration mean frequency of Y axis | bound -1 to 1
fBodyAcc-meanFreq()-Z | Frequency Domain body acceleration mean frequency of Z axis | bound -1 to 1
fBodyAccJerk-mean()-X  | Frequency Domain body acceleration jerk X axis - mean | bound -1 to 1
fBodyAccJerk-mean()-Y  | Frequency Domain body acceleration jerk Y axis - mean | bound -1 to 1
fBodyAccJerk-mean()-Z  | Frequency Domain body acceleration jerk Z axis - mean | bound -1 to 1
fBodyAccJerk-std()-X  | Frequency Domain body acceleration jerk X axis - std | bound -1 to 1
fBodyAccJerk-std()-Y | Frequency Domain body acceleration jerk Y axis - std | bound -1 to 1
fBodyAccJerk-std()-Z  | Frequency Domain body acceleration jerk Z axis - std | bound -1 to 1
fBodyAccJerk-meanFreq()-X  | Frequency Domain body acceleration jerk mean frequency - X axis | bound -1 to 1
fBodyAccJerk-meanFreq()-Y  | Frequency Domain body acceleration jerk mean frequency - Y axis | bound -1 to 1
fBodyAccJerk-meanFreq()-Z  | Frequency Domain body acceleration jerk mean frequency - Z axis | bound -1 to 1
fBodyGyro-mean()-X | Frequency Domain body gyroscope X axis - mean | bound -1 to 1
fBodyGyro-mean()-Y | Frequency Domain body gyroscope Y axis - mean | bound -1 to 1
fBodyGyro-mean()-Z | Frequency Domain body gyroscope Z axis - mean | bound -1 to 1
fBodyGyro-std()-X | Frequency Domain body gyroscope X axis - std | bound -1 to 1
fBodyGyro-std()-Y | Frequency Domain body gyroscope Y axis - std | bound -1 to 1
fBodyGyro-std()-Z  | Frequency Domain body gyroscope Z axis - std | bound -1 to 1
fBodyGyro-meanFreq()-X | Frequency Domain body gyroscope mean frequency - X axis | bound -1 to 1
fBodyGyro-meanFreq()-Y | Frequency Domain body gyroscope mean frequency - Y axis | bound -1 to 1
fBodyGyro-meanFreq()-Z | Frequency Domain body gyroscope mean frequency - Z axis | bound -1 to 1
fBodyAccMag-mean() | Magnitude of frequency domain body acceleration - mean | bound -1 to 1
fBodyAccMag-std() | Magnitude of frequency domain body acceleration - std | bound -1 to 1
fBodyAccMag-meanFreq() | Magnitude of frequency domain body acceleration - mean frequency | bound -1 to 1
fBodyBodyAccJerkMag-mean() | Magnitude of frequency domain body acceleration jerk - mean | bound -1 to 1
fBodyBodyAccJerkMag-std()  | Magnitude of frequency domain body acceleration jerk - std | bound -1 to 1
fBodyBodyAccJerkMag-meanFreq() | Magnitude of frequency domain body acceleration jerk - Mean frequency | bound -1 to 1
fBodyBodyGyroMag-mean() | Magnitude of frequency domain body gyroscope - Mean | bound -1 to 1
fBodyBodyGyroMag-std() | Magnitude of frequency domain body gyroscope - std | bound -1 to 1
fBodyBodyGyroMag-meanFreq() | Magnitude of frequency domain body gyroscope - mean frequency | bound -1 to 1
fBodyBodyGyroJerkMag-mean() | Magnitude of frequency domain body gyroscope jerk - Mean | bound -1 to 1
fBodyBodyGyroJerkMag-std()  | Magnitude of frequency domain body gyroscope jerk - std | bound -1 to 1
fBodyBodyGyroJerkMag-meanFreq() | Magnitude of frequency domain body gyroscope jerk - mean frequency | bound -1 to 1
