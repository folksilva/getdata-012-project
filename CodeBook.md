# CodeBook
This file describe the variables, the data, and transformations and work performed to clean up the data

## Variables in the environment
* "activity_labels": Data set with the labels for activities
* "features": Data set with names of features of each observation
* "labels": Vector with names for all columns in the output data set, see *Columns in output data*
* "X_train": Data set with values of each variable for each observation for train
* "y_train": Data set with values of activity for each observation for train
* "subject_train": Data set with values of subject for each observation for train
* "train": Merged data set for train
* "X_test": Data set with values of each variable for each observation for test
* "y_test": Data set with values of activity for each observation for test
* "subject_test": Data set with values of subject for each observation for test
* "test": Merged data set for test
* "data": Merged data set with train and test data and proccessed to make the output
* "result": Output data set of analysis
* "mean_cols": Vector with reference to columns for meam measurements
* "std_cols": Vector with reference to columns for standard deviation measurements

## Columns in output data
The first two columns are the subject and the observed activity, the other columns bring the average for the standard deviation and average measures.

Columns with mean in the name are the average measures, columns with  std in the name are standard deviation measures,  columns with the name finished in X, Y or Z are related to X, Y and Z directions.

Subject is a number between 1 and 30, related to person performing the activities.
Activity is the name of action performed by the subject to produce data to analysis, can be:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING


## Process
* First, loads data from files to the environment using read.table
* Merges the data into a single data set using cbind (for merge extra columns to train and test data set) and rbind (merge train and test data set into a single data set)
* Extracts only the measurements on the mean and standard deviation, selecting columns using mean_cols or std_cols variables
* Changes the activity value to descriptive names in each observation, using the dplyr package mutate function and names in activity_labels variable
* Creates a vector with descriptive labels for variables in data set, using the features variables as source and replacing "-" with "." and "(" and ")" with "" (empty)
* Adds the activity and subject descriptive labels to labels vector
* Renames columns of data set with descriptive labels with names function and labels vector
* Aggregate data set, into the result data set, by subject and activity, calculating the mean of each other variable, with aggregate function
* Arrange result data set to be ordered by subject, with dplyr package arrange function

The final result is like:

<code>SUBJECT ACTIVITY MEAN_OF_EACH_VARIABLE_FOR_SUBJECT_AND_ACTIVITY</code>


