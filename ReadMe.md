The purpose of this file is to document the input files to the script run_analysis.R and the functions performed by the script itself.  

## Analysis of input files

The dataset used as input to this project was acquired from:  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The zip archive is a set of files provided by the smartlab project:  

==================================================================  
Human Activity Recognition Using Smartphones Dataset  
Version 1.0  
==================================================================  
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - Universit‡ degli Studi di Genova.  
Via Opera Pia 11A, I-16145, Genoa, Italy.  
activityrecognition@smartlab.ws  
www.smartlab.ws  
==================================================================  

The file system of the zip archive is the following (with short description):  

UCI HAR Dataset/activity_labels.txt (lists an identifier and activity for each of the six activities studied)  
UCI HAR Dataset/features.txt (lists an identifier and name for each type of "feature" (or variable) measured, of which there are 561.)  
UCI HAR Dataset/features_info.txt (descriptive file not used as input to the process)  
UCI HAR Dataset/README.txt (descriptive file not used as input to the process)  
UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt  
UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt  
UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt  
UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt  
UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt  
UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt  
UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt  
UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt  
UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt  
UCI HAR Dataset/test/subject_test.txt (includes subject id on each line that corresponds to a observation)  
UCI HAR Dataset/test/X_test.txt (includes 561 features measured for each observation)  
UCI HAR Dataset/test/y_test.txt (includes activity id on each line that corresponds to an observation)  
UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt  
UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt  
UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt  
UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt  
UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt  
UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt  
UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt  
UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt  
UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt  
UCI HAR Dataset/train/subject_train.txt (includes subject id on each line that corresponds to a observation)  
UCI HAR Dataset/train/X_train.txt (includes 561 features measured for each observation)  
UCI HAR Dataset/train/y_train.txt (includes activity id on each line that corresponds to an observation)  

For the purposes of this exercise the Inertial Signals files are not used (they do not contain mean or standard deviation data).  

Data for train / test are formatted in the same way.  For each train and test directory, there are 3 files used, subject, x, and y.  These files can be joined by indexing the records by their respective position in the file.  For example, row 1 of each file relates to row 1 of each corresponding file.  The y file can be joined to the activity_label.txt file to find the actual name of the activity in question.

The main data file, x, contains columns for the 561 features listed in the features.txt file.  By indexing the column name, less the leading 'V' character, one may index the column name to the feature.txt file feature id.

## Analysis of processing

The script begins by downloading and unzipping the zip archive file.  Once files are available on the local file system, they are read into the program using read.table().  Some column names are modified to improve readability of the script.  

Each data file to be joined (subject, x, and y) are given row numbers "rowid" to facilitate positional matching of records from one file to the next during merging.  The 3 data files each for train and test are merged separately and then bound together to create a master data set containing both train and test data.  Please note that once these two sets are bound together the rowid is no longer unique to each data set and is not used in subsequent processing.  

Once loaded, the features.txt file is used to index the columns (v1-v561) that pertain to the features measured during the study.  We eliminate any of the feature id / labels that correspond to any measurements besides means or standard deviaitons. Any feature which contains the strings "mean" or "std" is considered to be a feature recording a mean or standard deviation and is included in our data set.  Each feature label in the file includes an id which can be adjusted with a leading "V" to match the column names in the data.  

Only the subject id, text description of activity, and 79 measures of features related to mean and standard deviaiton are preserved.  The data are grouped by subject id and activity, and the mean is calculated for all of the measurement columns.

The ouput is then written to file using write.table without row names.

## Peer reviewer, you can use this code to view the output data in rstudio!

address <- "https://s3.amazonaws.com/coursera-uploads/peer-review/3c4e850b2277d7cfcc26f4c1eda44811/summary_data_set.txt"
summarydata <- read.table(url(address), header = TRUE) 
View(summarydata)
