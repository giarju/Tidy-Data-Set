# Codebook for run_analysis.R script

This file is the code book for run_analysis.R script and contain detailed information about variables and transformation used in the script. 

## Data Used
The data used in this analysis is from the UCI HAR data set 
1. X_test.txt         : Test data
2. y_test.txt         : Test labels
3. subject_test.txt   : Contain 30 subject in who performed the activity where each row is observation for test sample
4. X_train.txt        : Training data
5. y_train.txt        : Training labels
6. subject_train.txt  : Contain 30 subject in who performed the activity where each row is observation for training sample
7. activity_label.txt : Links the class labels with their activity name
8. features.txt       : List of all variables in the data set

## Variables
* test_set      : Contain the X_test data
* test_label    : Contain the y_test data
* test_subject  : Contain the subject_test data
* train_set     : Contain the X_train data
* train_label   : Contain the y_train data
* train_subject : Contain the subject_train data
* activity      : Contain the activity_label data
* feature       : Contain the feature data

* col_var       : Selected coloumn number with mean and std data
* col_names     : Respective names for the coloumn selected
* test_activity : Contain activity mapping from the table for test data
* train_activity: Contain activity mapping from the table for train data
* test_full     : Table with tidy data set from selected test data
* train_full    : Table with tidy data set from selected train data
* full_data     : Contain test_full merged with train_full
* mean_data     : New data set with the average of each variable for each activity and each subject.

## Transformation 
* col_names     : Transform all the selected variable name with many symbol to a more concise coloumn names with only lowercase letter
* test_full     : Contained the filtered test data (only mean and std observaton) with subject and activity merged together
* train_full    : Contained the filtered train data (only mean and std observaton) with subject and activity merged together
* full_data     : The complete tidy data set with test and train data set
* test_activity : Map the original integer factor into a more descriptive factor in activity_label data
