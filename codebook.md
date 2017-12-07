---
title: "codebook"
output: html_document
---

## R Markdown

## Data Collection Description

Chris Schmidt  
PRESENTATION OF BODY MOVEMENT STUDY DATA IN "TIDY DATA" FORMAT  

SUMMARY: The purpose of this data collection is to present the data collected for the "Human Activity Recognition Using Smartphones Dataset Version 1.0 " study.  Data are joined from the original data set, measures were "narrowed" from wide columnar format to descriptor / measure format, and only measurements pertaining to mean and standard deviation are retained in the final data set.  

EXTENT OF COLLECTION: 2 data files + run_analysis.R processing script + ReadMe.md  

EXTENT OF PROCESSING: Join and reshape data, summary file includes a mean of each variable type recorded in the detail file.  

DATA FORMAT: Records with comma separated values (csv)  

 Part 1: detail_data_set.csv (detail data collected over time)  
     File Structure: rectangular  
     Cases: 813,621  
     Variables: 4  
     Record Length: variable  
     Records Per Case: 1  

 Part 2: summary_data_set.csv  (sumarized detail data, only one record per subject/activity/feature) 
     File Structure: rectangular  
     Cases: 14,220  
     Variables: 4  
     Record Length: variable  
     Records Per Case: 1  
     
 Part 3: codebook for all parts  
 
 
Codebook for detail_data_set.csv

Variable Name | Variable | Values or Explanation   
------- | ---------- | --------------------------------------------:
subjectid | Unique id for each subject in the experiment | Unique id for subject in the experiment.  Possible values range 1-30
activityname | Descripton of activity performed by subject | Description of one of six possible activities performed during the experiment.  Possible values are: WALKING  WALKING_UPSTAIRS  WALKING_DOWNSTAIRS  SITTING  STANDING  LAYING  
featurename | Description of the variable measured | Descriptive term for the data measured.  There are 79 measures of various mean and standard deviation data points. See footnote for possible values.
measure | Actual measurement | Actual measurement recorded of the feature


Codebook for summary_data_set.csv

Variable Name | Variable | Values or Explanation   
------- | ---------- | --------------------------------------------:
subjectid | Unique id for each subject in the experiment | Unique id for subject in the experiment.  Possible values range 1-30
activityname | Descripton of activity performed by subject | Description of one of six possible activities performed during the experiment.  Possible values are: WALKING  WALKING_UPSTAIRS  WALKING_DOWNSTAIRS  SITTING  STANDING  LAYING  
featurename | Description of the variable measured | Descriptive term for the data measured.  There are 79 measures of various mean and standard deviation data points. See footnote for possible values.
meanofmeasure | Mean of measurement for each subject/activity/feature. | Arithmetic mean of all measurements for the listed subject/activity/feature.


*Possible values for featurename are listed below:  
fBodyAcc-mean()-X  
fBodyAcc-mean()-Y  
fBodyAcc-mean()-Z  
fBodyAcc-meanFreq()-X  
fBodyAcc-meanFreq()-Y  
fBodyAcc-meanFreq()-Z  
fBodyAcc-std()-X  
fBodyAcc-std()-Y  
fBodyAcc-std()-Z  
fBodyAccJerk-mean()-X  
fBodyAccJerk-mean()-Y  
fBodyAccJerk-mean()-Z  
fBodyAccJerk-meanFreq()-X  
fBodyAccJerk-meanFreq()-Y  
fBodyAccJerk-meanFreq()-Z  
fBodyAccJerk-std()-X  
fBodyAccJerk-std()-Y  
fBodyAccJerk-std()-Z  
fBodyAccMag-mean()  
fBodyAccMag-meanFreq()  
fBodyAccMag-std()  
fBodyBodyAccJerkMag-mean()  
fBodyBodyAccJerkMag-meanFreq()  
fBodyBodyAccJerkMag-std()  
fBodyBodyGyroJerkMag-mean()  
fBodyBodyGyroJerkMag-meanFreq()  
fBodyBodyGyroJerkMag-std()  
fBodyBodyGyroMag-mean()  
fBodyBodyGyroMag-meanFreq()  
fBodyBodyGyroMag-std()  
fBodyGyro-mean()-X  
fBodyGyro-mean()-Y  
fBodyGyro-mean()-Z  
fBodyGyro-meanFreq()-X  
fBodyGyro-meanFreq()-Y  
fBodyGyro-meanFreq()-Z  
fBodyGyro-std()-X  
fBodyGyro-std()-Y  
fBodyGyro-std()-Z  
tBodyAcc-mean()-X  
tBodyAcc-mean()-Y  
tBodyAcc-mean()-Z  
tBodyAcc-std()-X  
tBodyAcc-std()-Y  
tBodyAcc-std()-Z  
tBodyAccJerk-mean()-X  
tBodyAccJerk-mean()-Y  
tBodyAccJerk-mean()-Z  
tBodyAccJerk-std()-X  
tBodyAccJerk-std()-Y  
tBodyAccJerk-std()-Z  
tBodyAccJerkMag-mean()  
tBodyAccJerkMag-std()  
tBodyAccMag-mean()  
tBodyAccMag-std()  
tBodyGyro-mean()-X  
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z  
tBodyGyro-std()-X  
tBodyGyro-std()-Y  
tBodyGyro-std()-Z  
tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y  
tBodyGyroJerk-mean()-Z  
tBodyGyroJerk-std()-X  
tBodyGyroJerk-std()-Y  
tBodyGyroJerk-std()-Z  
tBodyGyroJerkMag-mean()  
tBodyGyroJerkMag-std()  
tBodyGyroMag-mean()  
tBodyGyroMag-std()  
tGravityAcc-mean()-X  
tGravityAcc-mean()-Y  
tGravityAcc-mean()-Z  
tGravityAcc-std()-X  
tGravityAcc-std()-Y  
tGravityAcc-std()-Z  
tGravityAccMag-mean()  
tGravityAccMag-std()  
