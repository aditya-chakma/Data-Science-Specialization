# Loading Train data and train labels
train_x <- read.table('train/X_train.txt')
train_y <- read.table('train/y_train.txt')
train_subject <- read.table('train/subject_train.txt')

# Loading Test data and test labels
test_x <- read.table('test/X_test.txt')
test_y <- read.table('test/y_test.txt')
test_subject <- read.table('test/subject_test.txt')

# reading features
features <-read.table('features.txt')
#reading labels
labels <- read.table('activity_labels.txt')


#  1. Merges the training and the test sets to create one data set
merged_x <- rbind(train_x,test_x)
merged_y <- rbind(train_y,test_y)
merged_subject <- rbind(train_subject, test_subject)


# 2.Extracts only the measurements on the mean and standard deviation for each measurement
selected_features <- features[grep(x = features[,2],pattern = 'mean\\(\\)|std\\(\\)'),]
merged_x <- merged_x[,selected_features[,1]]


# 3.Uses descriptive activity names to name the activities in the data set
names(merged_y) <- c('activity')
merged_y$activity.name <- labels[merged_y[,1],2]
names(merged_subject) <- c('subject')


# 4.Appropriately labels the data set with descriptive variable names.
names(merged_x) <- features[selected_features[,1],2]

# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each
# variable for each activity and each subject.
merged_global <- cbind(merged_x,activity =merged_y[,1], subject =merged_subject[,1])
merged_global_grouped <- merged_global %>% group_by(activity,subject) %>% summarize_each(funs = mean)
write.table(merged_global,'Assignment/TidyData.txt',row.names = F,col.names = T)
