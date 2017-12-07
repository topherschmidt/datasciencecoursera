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

#Narrow the data
dat_long <- gather(dat, "featureid", "measure", V1:V561, factor_key=TRUE)

#remove the leading "V" from the feature type field
dat_long$featureid <- gsub("V", "", dat_long$featureid)

#Merge in the feature names.  Note that because this is an inner join with the 
#feature lables which have been cleansed of all but mean and std measurements only the 
#relevant data will be retained.
dat_long <- merge(dat_long, feature_labels, by = "featureid")

#return only the required data for a tidy data set:
tidy_dat <- select(dat_long, subjectid, activityname, featurename, measure) %>%
    arrange(subjectid, activityname, featurename)

#from the tidy data set get the average of each variable for each activity for each subject
#first group the df so we can call summarize
grouped_dat <- group_by(tidy_dat, subjectid, activityname, featurename)
#summarize the data, capturing mean() of each feature
means_dat <- summarize(grouped_dat, mean(measure))


#write the final result to a csv file:
write.csv(tidy_dat, "detail_data_set.csv", row.names = FALSE)
write.csv(means_dat, "summary_data_set.csv", row.names = FALSE)









