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

train_data = cbind(subject_train, y_train, x_train)

# Merge of training and test data
complete_data = rbind(test_data, train_data)

#Regex to identify col names with means and stds
mean_std_regex ="\\mean\\.\\.|std\\.\\."
variables = colnames(complete_data)[grep(mean_std_regex, names)]

#new data set with measurements on the mean and standard deviation
extracted_data = data[,c('subject', 'activity', variables)]

#Replaces the activities codes with their descriptive names
extracted_data$activity <- mapvalues(extracted_data$activity, from=activity_labels$number, to=as.character(activity_labels$label))

#Split the data into data frames by subject and activity
#data_by_subject_and_activity <- split(extracted_data, list(extracted_data$subject, extracted_data$activity))

#final_data <- sapply(data_by_subject_and_activity, function(x) colMeans(x[, cols_to_extract]))

#Split the data into data frames by subject and activity
data_by_subject <- split(extracted_data, extracted_data$subject)
data_by_activity <- split(extracted_data, extracted_data$activity)
#averages of variables by subject and activity
avg_by_subject <- sapply(data_by_subject, function(x) colMeans(x[, cols_to_extract]))
avg_by_activity <- sapply(data_by_activity, function(x) colMeans(x[, cols_to_extract]))

#finally the tidy dataset, with the average of each variable for each activity and each subject.
final_data = cbind(avg_by_subject, avg_by_activity)