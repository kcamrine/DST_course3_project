# This is a description of the tidy dataset run_analysis_output_tidy.txt

All data is summarized (mean and standard deviation (std)) over multiple measurements split into windows of 2.56 seconds with 50% overlap of other windows. We then take the average for each individual over all of the means and standard deviations to summarize all timeframes. 

## Data Description (in order of column appearance):

"subject"                     the subject identifier, ranging from subject 1 to subject 30.
"activity"		      the activity any subject was engaging in for the averages computed

### for the following variables, we have the body and gravity acceleration which were calculated at a constant rate of 50 hz, averaged over timeframe means. 
"tBodyAcc-mean()-X"	      
"tBodyAcc-mean()-Y"
"tBodyAcc-mean()-Z"
"tGravityAcc-mean()-X"
"tGravityAcc-mean()-Y"
"tGravityAcc-mean()-Z"

### for the following variables, body linear acceleration and angular velocity allowed for computation of the acceleration jerk averaged over timeframe means
"tBodyAccJerk-mean()-X"
"tBodyAccJerk-mean()-Y"
"tBodyAccJerk-mean()-Z"
"tBodyGyro-mean()-X"
"tBodyGyro-mean()-Y"
"tBodyGyro-mean()-Z"
"tBodyGyroJerk-mean()-X"
"tBodyGyroJerk-mean()-Y"
"tBodyGyroJerk-mean()-Z"

### the euclidian norm  (denoted as "mag") was added to these varaibles, and then the mean was calculated over all timeframe means
"tBodyAccMag-mean()"
"tGravityAccMag-mean()"
"tBodyAccJerkMag-mean()"
"tBodyGyroMag-mean()"
"tBodyGyroJerkMag-mean()"

### the following variables are means of the fourier transformations of previously described variables over timeframe means (denoted by the "f" at the beginning of the variable)
"fBodyAcc-mean()-X"
"fBodyAcc-mean()-Y"
"fBodyAcc-mean()-Z"
"fBodyAccJerk-mean()-X"
"fBodyAccJerk-mean()-Y"
"fBodyAccJerk-mean()-Z"
"fBodyGyro-mean()-X"
"fBodyGyro-mean()-Y"
"fBodyGyro-mean()-Z"
"fBodyAccMag-mean()"
"fBodyBodyAccJerkMag-mean()"
"fBodyBodyGyroMag-mean()"
"fBodyBodyGyroJerkMag-mean()"


### the following variables are averages of standard deviations over time windows of previously described variables 
"tBodyAcc-std()-X"
"tBodyAcc-std()-Y"
"tBodyAcc-std()-Z"
"tGravityAcc-std()-X"
"tGravityAcc-std()-Y"
"tGravityAcc-std()-Z"
"tBodyAccJerk-std()-X"
"tBodyAccJerk-std()-Y"
"tBodyAccJerk-std()-Z"
"tBodyGyro-std()-X"
"tBodyGyro-std()-Y"
"tBodyGyro-std()-Z"
"tBodyGyroJerk-std()-X"
"tBodyGyroJerk-std()-Y"
"tBodyGyroJerk-std()-Z"
"tBodyAccMag-std()"
"tGravityAccMag-std()"
"tBodyAccJerkMag-std()"
"tBodyGyroMag-std()"
"tBodyGyroJerkMag-std()"
"fBodyAcc-std()-X"
"fBodyAcc-std()-Y"
"fBodyAcc-std()-Z"
"fBodyAccJerk-std()-X"
"fBodyAccJerk-std()-Y"
"fBodyAccJerk-std()-Z"
"fBodyGyro-std()-X"
"fBodyGyro-std()-Y"
"fBodyGyro-std()-Z"
"fBodyAccMag-std()"
"fBodyBodyAccJerkMag-std()"
"fBodyBodyGyroMag-std()"
"fBodyBodyGyroJerkMag-std()"
