# Features and activity labels
features <- read.table('UCI HAR Dataset/features.txt', row.names=1, col.names=c('number', 'name'))
activity_labels <- read.table('UCI HAR Dataset/activity_labels.txt', col.names=c('number', 'label'))

# Loading Test data
subject_test <- read.table('UCI HAR Dataset/test/subject_test.txt', col.names='subject')
x_test <- read.table('UCI HAR Dataset/test/X_test.txt', col.names=features$name)
y_test <- read.table('UCI HAR Dataset/test/y_test.txt', col.names='activity')

test_data = cbind(subject_test, y_test, x_test)

# Loading Train data
subject_train <- read.table('UCI HAR Dataset/train/subject_train.txt', col.names='subject')
x_train <- read.table('UCI HAR Dataset/train/X_train.txt', col.names=features$name)
y_train <- read.table('UCI HAR Dataset/train/y_train.txt', col.names='activity')

train_data <- cbind(subject_train, y_train, x_train)

# Merge of training and test data
complete_data <- rbind(test_data, train_data)

#Regex to identify col names with means and stds
mean_std_regex <- "\\mean\\.\\.|std\\.\\."
variables <- colnames(complete_data)[grep(mean_std_regex, names(complete_data))]

#new data set with measurements on the mean and standard deviation
extracted_data <- complete_data[,c('subject', 'activity', variables)]

#Replaces the activities codes with their descriptive names
library(plyr)
extracted_data$activity <- mapvalues(extracted_data$activity, from=activity_labels$number, to=as.character(activity_labels$label))

#Groups the data by subject and activity
grouped_data <- group_by(extracted_data, subject, activity)

#Calculates the mean for each variable for each subject and activity
final_data <- summarise_each(grouped_data, funs(mean))

write.table(final_data, 'final_data.txt', row.names=FALSE)