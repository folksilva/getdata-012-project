# This script extract only the measurements on the mean and standard deviation for each measurement

# Get mean cols
mean_cols <- features$V2 %like% "mean()" & !features$V2 %like% "meanFreq()"
# Get standard deviation cols
std_cols <- features$V2 %like% "std()"
# Filter data
data <- data[,mean_cols | std_cols]