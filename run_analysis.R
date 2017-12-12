library(dplyr)
library(tidyr)

remotefile <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
localfile <- "./Dataset.zip"

if (!file.exists(localfile)) {
  download.file(remotefile, localfile, method = "auto")
}
unzip("./Dataset.zip")


#Read in the label files:
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("activityid", "activityname"))
feature_labels <- read.table("./UCI HAR Dataset/features.txt", col.names = c("featureid", "featurename"))

#Restrict the contents of feature labels to only the mean and standard dev. features we are interested in collecting
feature_labels <- filter(feature_labels, grepl("std|mean", featurename))

#Read in the test data set
x_test <- read.table("./UCI HAR Dataset/test/x_test.txt")
subject_test <-read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "subjectid") 
y_test <-read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "activityid")

#Add a rowid to all test data
subject_test$rowid <- 1:nrow(subject_test)
y_test$rowid <- 1:nrow(y_test)
x_test$rowid <- 1:nrow(x_test)

#merge the y test / subject data 
testdat <- merge(y_test, subject_test, by = "rowid")
#Append the x test measurements
testdat <- merge(testdat, x_test, by = "rowid")

#Read in the train data set
x_train <- read.table("./UCI HAR Dataset/train/x_train.txt")
subject_train <-read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "subjectid") 
y_train <-read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "activityid")

#Add a rowid to all train data
subject_train$rowid <- 1:nrow(subject_train)
y_train$rowid <- 1:nrow(y_train)
x_train$rowid <- 1:nrow(x_train)

#merge the y train / subject data 
traindat <- merge(y_train, subject_train, by = "rowid")
#Append the x test measurements
traindat <- merge(traindat, x_train, by = "rowid")


#combine the test and train into single data set - note that rowid is no longer
#important / unique

dat <- rbind(traindat, testdat)

#append the activity label
dat <- merge(dat, activity_labels, by = "activityid")

#Adjust the feature labels so they match the column names in the data
feature_labels$featureid <- gsub("([0-9]+)", "V\\1", feature_labels$featureid)

#select out only the data of interest
tidydata <- select(dat, subjectid, activityname, feature_labels$featureid)

# Fix the column names
names(tidydata) <- c("subjectid", "activityname", as.character(feature_labels$featurename))

#Summarize the data for each subject and activity, finding the mean for all features measured
means_dat <- tidydata %>% group_by(subjectid, activityname) %>% summarize_all(funs(mean))

#write the final result to a file:
write.table(means_dat, "summary_data_set.txt", row.names = FALSE)









