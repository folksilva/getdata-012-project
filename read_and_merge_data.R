# This script read and merge the data files to begin the analysis

# Read the features data
features <- read.table("data/features.txt", header=FALSE, strip.white=TRUE)
# Read the activity labels data
activity_labels <- read.table("data/activity_labels.txt", header=FALSE, strip.white=TRUE)

# Read the train data set to X_train
X_train <- read.table("data/train/X_train.txt", header=FALSE, strip.white=TRUE)
# Read the train data labels to y_train
y_train <- read.table("data/train/y_train.txt", header=FALSE)
# Read the train data subject to subject_train
subject_train <- read.table("data/train/subject_train.txt", header=FALSE)
# Merge all the train data to train
train <- cbind(X_train, y_train, subject_train)

# Read the test data set to X_test
X_test <- read.table("data/test/X_test.txt", header=FALSE, strip.white=TRUE)
# Read the test data labels to y_test
y_test <- read.table("data/test/y_test.txt", header=FALSE)
# Read the test data subject to subject_test
subject_test <- read.table("data/test/subject_test.txt", header=FALSE)
# Merge all the test data to test
test <- cbind(X_test, y_test, subject_test)

# Merge train and test data to merged_data
data <- rbind(train, test)