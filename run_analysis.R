# Getting and Cleaning Data Course Project

# Load libraries
library(dplyr)

# 1 - Merges the training and the test sets to create one data set
source("read_and_merge_data.R")

# 2 - Extracts only the measurements on the mean and standard deviation for each measurement
source("extract_mean_and_std.R")

# 3 - Uses descriptive activity names to name the activities in the data set
data <- mutate(data, V1.1=activity_labels[V1.1,2])

# 4 - Appropriately labels the data set with descriptive variable names
source("label_data.R")

# 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
result <- aggregate(. ~ subject + activity, data = data, FUN = mean)
result <- arrange(result, subject)  