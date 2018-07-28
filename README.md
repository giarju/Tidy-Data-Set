# Creating Tidy Data Sets

This file contains information about the R script used for cleaning the data project. The data used in this project is from "Human Activity Recognition Using Smartphones Dataset" that could be obtained from the link below
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## run_analysis.R
This is the main script used for merging and tidying data obtained from "test" and "train" data set. It will do the following procedure:
1. Read the raw data text files from the folder
2. Select only the mean and standard deviation data for each observation. 
3. Create descriptive names for the activities in the data set
4. Labels the variable with descriptive names 
5. Merges the training and the test sets to create one data set.
6. Create an independent data set contain the mean of each variable for each activity and each subject.
7. Write a text file contain the new independent data set

**The script assume that all data from the UCI HAR data set is in the same folder as the script**
