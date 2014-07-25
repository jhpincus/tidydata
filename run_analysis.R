###This script  creates a subdirectory called tidydata in the users working directory, downloads
### Samsung Galaxy 5 accelerometer data collected by UCI researchers, produces a tidy data set
###from the raw data, and writes it to a file called tidy.txt as tab delimited data. The file should be read into 
###R with the read.table command and header = TRUE.  The readme file in the github repository loactted at
###https://github.com/jhpincus/tidydata and the comments below provide details for the processs.
###NOTE: THE reshape2 LIBRARY MUST BE INSTALLED BEFORE RUNNING THIS SCRIPT

#create tidydata subdirectory, download zip archive of data, and unzip archive
if (!file.exists("./tidydata"))
{
  dir.create("./tidydata")
}
setwd("./tidydata")
fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "dataset.zip")
unzip("dataset.zip")

#read data into R
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
train_x <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_y <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
test_x <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_y <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

#combine train and test dataframes with their respective subjects and activites and add column names
train <- cbind(subject_train, train_y, train_x)
colnames(train) <- c("subject", "activity", features$V2)
test <- cbind(subject_test, test_y, test_x)
colnames(test) <- c("subject", "activity", features$V2)

#merge train and test dataframes vertically and extract columns for subject, activity, mean, and sd
combined <- rbind(train, test)
combinedSub <- combined[, grep("subject|activity|mean[^F]()|std[^F]()", colnames(combined))]

#label activities and relabel columns with more descriptive names
combinedSub$activity <- factor(combinedSub$activity, labels  = c("Walking", "WalkingUpstairs", "WalkingDownstairs", "Sitting", "Standing", "Laying"))
colnames(combinedSub) <- gsub("-", "", colnames(combinedSub))
colnames(combinedSub) <- gsub("[()]", "", colnames(combinedSub))
colnames(combinedSub) <- gsub("^[t]", "time", colnames(combinedSub))
colnames(combinedSub) <- gsub("^[f]", "frequency", colnames(combinedSub))
colnames(combinedSub) <- gsub("mean", "Mean", colnames(combinedSub))
colnames(combinedSub) <- gsub("std", "Std", colnames(combinedSub))
colnames(combinedSub) <- gsub("Acc", "Acceleration", colnames(combinedSub))
colnames(combinedSub) <- gsub("Mag", "Magnitude", colnames(combinedSub))
colnames(combinedSub) <- gsub("BodyBody", "Body", colnames(combinedSub))

#recast combined and subset dataframe to one with average of each variable for each activity and each subject
library(reshape2)
melted <- melt(combinedSub, id.vars = c("subject", "activity"))
tidyData <- dcast(melted, subject + activity ~ variable, mean)

#write tidydata file to disc as tab delimited text file
write.table(tidyData, "tidyData.txt", row.names = FALSE)