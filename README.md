# DataCleaningClassProject

The dataset includes the following files:
=========================================
- 'run_analysis.R'
- 'README.md'
- 'Codebook.md'

set your directory to the root of the UCI HAR Dataset - 
   the script will access the files relative to the root
Create the tidy data sets by sourcing run_analysis.R

The following describes the program variables.

mergedSaved contains the first tidy data set 

summaryData contains the second tidy data set which has the means for each of the columns by Subject within each Activity

mergedX contains the input to the summary_each command used to produce summaryData.
megedX is mergedSaved with the Subject column added

X_test and X_train , y_train, y_test , subject_train and subject_test are the dataframes created by reading the input data.

cols contains the column names from features.txt
activities contains the activity_labels

my is the merged y_train and y_test dataframes

msubject is the merged subject_test and subject_train dataframe


