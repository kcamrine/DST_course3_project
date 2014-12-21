# Codebook for 'Getting and Cleaning Data' coursera course project
# Katherine Amrine, submitted 12/21/14

#setwd("~/Documents/classes/data_science_toolbox/course3/")

# Merges the training and the test sets to create one data set including adding names of columns and identifiers of samples
tests_x <- read.table("UCI HAR Dataset/test/X_test.txt")
trains_x <- read.table("UCI HAR Dataset/train/X_train.txt")
total_x <- rbind(tests_x,trains_x) #combine test & training
expids <- c(read.table("UCI HAR Dataset/test/subject_test.txt")[,1],read.table("UCI HAR Dataset/train/subject_train.txt")[,1]) #subject number
activ <- c(read.table("UCI HAR Dataset/test/y_test.txt")[,1],read.table("UCI HAR Dataset/train/y_train.txt")[,1]) #activity number
activity.names <- read.table("UCI HAR Dataset/activity_labels.txt")[,2]

# Appropriately labels the data set with descriptive variable names. 
colnames(total_x) <- c(as.character(read.table("UCI HAR Dataset/features.txt")[,2])) #variable names


# Extracts only the measurements on the mean and standard deviation for each measurement. 
total_x_mean <- grep(colnames(total_x),pattern="mean()",fixed=TRUE)
total_x_std <- grep(colnames(total_x),pattern="std()",fixed=TRUE)
total_x_subset <- total_x[c(total_x_mean,total_x_std)]
total_x_subset <- cbind(subject=expids,activity=activ,total_x_subset)

# Uses descriptive activity names to name the activities in the data set
total_x_subset$activity <- activity.names[total_x_subset$activity]

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
total_x_subset_by_activity_subject <- aggregate( . ~ subject+activity, data=total_x_subset, FUN=mean)

#for the long version
#final_summary <- melt(total_x_subset_by_activity_subject,id.vars = c(1,2))

#clean up the names
colnames(total_x_subset_by_activity_subject) <- gsub("BodyBody","Body",colnames(total_x_subset_by_activity_subject))

