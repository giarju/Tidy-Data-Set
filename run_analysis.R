#run_analysis will do the following process for The Human Activity Recognition Using Smartphones Dataset
    #1.Extracts only the measurements on the mean and standard deviation for each measurement. 
    #2.Uses descriptive activity names to name the activities in the data set
    #3.Appropriately labels the data set with descriptive variable names. 
    #4.Merges the training and the test sets to create one data set.
    #5.Create an independent data set with the average of each variable for each activity and each subject.

##
##PLACE THE SCRIPT IN THE SAME FOLDER FOR ALL OF THE UCI HAR DATASET
##

library(dplyr)

#read data 
test_set <- read.table("X_test.txt")
test_label <- read.table("y_test.txt")
test_subject <- read.table("subject_test.txt")
train_set <- read.table("X_train.txt")
train_label <- read.table("y_train.txt")
train_subject <- read.table("subject_train.txt")
activity <- read.table("activity_labels.txt")
feature <- read.table("features.txt")

#selecting only coloumn with mean and std
col_var <- grepl("mean|std", feature$V2)

#creating a vector of coloumn names with lower characters only
col_names <- feature[col_var,2]
col_names <- gsub('-mean', 'mean', col_names)
col_names <- gsub('-std', 'std', col_names)
col_names <- gsub('[-()]', '', col_names)
col_names <- tolower(col_names)

#changing number factors to descriptive factor for activity coloumn
test_activity <- activity[test_label$V1,2]
train_activity <- activity[train_label$V1,2]

#merging train and test datasets
test_full <- cbind(test_subject,test_activity,test_set[,col_var])   #merging test coloumn component
names(test_full) <- c("subject", "activity",col_names)    #changing the coloumn names

train_full <- cbind(train_subject,train_activity,train_set[,col_var])  #merging train coloumn component
names(train_full) <- c("subject", "activity",col_names)    #changing the coloumn names

full_data <- rbind(train_full,test_full)           #merging both dataset


#creating separate datasets containing
#the average of each variable for each activity and each subject.
mean_data <- full_data %>% 
            group_by(subject,activity) %>%
            summarize_all(mean)

#creating a text file of mean_data
write.table(mean_data, "final data.txt", row.names = F)

