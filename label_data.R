# This script set descriptive labels for variables
labels <- gsub("-", ".", features[mean_cols | std_cols,2])
labels <- gsub("\\(", "", labels)
labels <- gsub("\\)", "", labels)
labels[length(labels)+1] <- "activity"
labels[length(labels)+1] <- "subject"
names(data) <- labels