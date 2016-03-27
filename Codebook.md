
Getting and Cleaning Data Course Project

#Project goals
The script run_analysis.R produces two tidy data sets from data sets from the Human Activity Recognition project.

The first data set
 •	Merges the training and the test sets to create one data set.
 •	Extracts only the measurements on the mean and standard deviation for each measurement.
 •	Uses descriptive activity names to name the activities in the data set
 •	Appropriately labels the data set with descriptive variable names

The second dataset
 •	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Input Data – 
The input data is contained in
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#Processing Steps
1.read in the train and test data sets
  The data is contained in 3 data sets.
  X_train and X_test contain the test measurements
  y_train and y_test contain the activity for each row in the X datasets
  subject_train and subject_test contain the subject for each row in the X datasets

2.merge the X_train and X_test data sets using rbind. The merged dataset contains the number of rows of X_train + X_test
nrow(X_train)
[1] 7352
> nrow(X_test)
[1] 2947
> nrow(mergedX)
[1] 10299


3.read in the "features.txt" file which labels for the fields in the X datasets.
use the data from the features.txt file to rename the merged X_train and X_test dataframe columns.

4.use grepl with a regex to select out the columns for mean and std only. 


4.add the activities for y_test and y_train to the merged dataset.
   a. merge y_test and y_train using rbind
   b. use the names in the activity_labels .txt file to turn the integer value in         the y files into a factor.
   c.add the column from the merged y_train and y_test dataframes to the merged          X_train and X_test dataframe

5 The first tidy dataset has nowbeen built

6.add the subject column from the merged subject_test and subject_train files to the dataset in step 5. 

7.use the dplyr summarize_each function while grouping by Subjects with Activity to generate the second tidy data set.


   

