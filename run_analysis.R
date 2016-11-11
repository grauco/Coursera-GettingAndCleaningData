## Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#first we have to create a directory data, where we are going to download the zipped dataset and then we unzip the dataset
filesPath <- "/Users/giorgiarauco/Downloads/UCI HAR Dataset"
setwd(filesPath)

if(!file.exists("./data")){
  dir.create("./data")
  }

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")

unzip(zipfile="./data/Dataset.zip",exdir="./data")

#read all the data tables
testActivity <- read.table("test/y_test.txt")
testSubject <- read.table("test/subject_test.txt")
testData <- read.table("test/X_test.txt")
trainActivity <- read.table("train/y_train.txt")
trainSubject <- read.table("train/subject_train.txt")
trainData <- read.table("train/X_train.txt")

##1. Merges the training and the test sets to create one data set.

#combine Activity, Subject and Data files, merging the training and the test sets with rbind
Subject <- rbind(trainSubject, testSubject)
Activity <- rbind(trainActivity, testActivity)
Data <- rbind(trainData, testData)

names(Subject)<-c("subject")
names(Activity)<- c("activity")

DataNames <- read.table("features.txt",head=FALSE)
names(Data)<- DataNames$V2

DataCombine <- cbind(Subject, Activity)
DataFinal <- cbind(Data, DataCombine)

##2. Extracts only the measurements on the mean and standard deviation for each measurement
subdataNames<-DataNames$V2[grep("mean\\(\\)|std\\(\\)", DataNames$V2)]

selectedNames<-c(as.character(subdataNames), "subject", "activity" )
DataFinal<-subset(DataFinal,select=selectedNames)

##3. Uses descriptive activity names to name the activities in the data set
activityLabels <- read.table("activity_labels.txt", header = FALSE)

##4. Appropriately labels the data set with descriptive activity names.
names(DataFinal)<-gsub("^t", "time", names(DataFinal))
names(DataFinal)<-gsub("^f", "frequency", names(DataFinal))
names(DataFinal)<-gsub("Acc", "Accelerometer", names(DataFinal))
names(DataFinal)<-gsub("Gyro", "Gyroscope", names(DataFinal))
names(DataFinal)<-gsub("Mag", "Magnitude", names(DataFinal))
names(DataFinal)<-gsub("BodyBody", "Body", names(DataFinal))

## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(plyr);
Data2<-aggregate(. ~subject + activity, DataFinal, mean)
Data2<-Data2[order(Data2$subject,Data2$activity),]
write.table(Data2, file = "tidieddata.txt",row.name=FALSE)
