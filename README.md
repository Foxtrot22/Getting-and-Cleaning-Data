#Getting-and-Cleaning-Data
##Project for the Coursera "Getting and Cleaning Data" course

###Introduction
The data set shows the average measures for each person and physical activity (e.g., walking, sitting, standing, etc.) as measured from accelerometers in the Samsung Galaxy S smartphone. A full description is available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The data that was used for this project is found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Column Names in Dataset
####Dimension variables - Combinations of Subject and Activity are unique
1. Subject - The ID of the subject in the experiment
1. Activity - The activity that the subject performed

####Aggregated variables - If a subject does a particular activity multiple times then the arithmetic mean is calculated for the Subject/Activity combination.
1. tBodyAcc-mean()-X
1. tBodyAcc-mean()-Y
1. tBodyAcc-mean()-Z          
1. tGravityAcc-mean()-X
1. tGravityAcc-mean()-Y
1. tGravityAcc-mean()-Z
1. tBodyAccJerk-mean()-X
1. tBodyAccJerk-mean()-Y      
1. tBodyAccJerk-mean()-Z
1. tBodyGyro-mean()-X
1. tBodyGyro-mean()-Y
1. tBodyGyro-mean()-Z
1. tBodyGyroJerk-mean()-X     
1. tBodyGyroJerk-mean()-Y
1. tBodyGyroJerk-mean()-Z
1. tBodyAccMag-mean()
1. tGravityAccMag-mean()
1. tBodyAccJerkMag-mean()     
1. tBodyGyroMag-mean()
1. tBodyGyroJerkMag-mean()
1. fBodyAcc-mean()-X
1. fBodyAcc-mean()-Y
1. fBodyAcc-mean()-Z          
1. fBodyAccJerk-mean()-X
1. fBodyAccJerk-mean()-Y
1. fBodyAccJerk-mean()-Z
1. fBodyGyro-mean()-X
1. fBodyGyro-mean()-Y         
1. fBodyGyro-mean()-Z
1. fBodyAccMag-mean()
1. fBodyBodyAccJerkMag-mean()
1. fBodyBodyGyroMag-mean()
1. fBodyBodyGyroJerkMag-mean()
1. tBodyAcc-std()-X
1. tBodyAcc-std()-Y
1. tBodyAcc-std()-Z
1. tGravityAcc-std()-X
1. tGravityAcc-std()-Y        
1. tGravityAcc-std()-Z
1. tBodyAccJerk-std()-X
1. tBodyAccJerk-std()-Y
1. tBodyAccJerk-std()-Z
1. tBodyGyro-std()-X          
1. tBodyGyro-std()-Y
1. tBodyGyro-std()-Z
1. tBodyGyroJerk-std()-X
1. tBodyGyroJerk-std()-Y
1. tBodyGyroJerk-std()-Z      
1. tBodyAccMag-std()
1. tGravityAccMag-std()
1. tBodyAccJerkMag-std()
1. tBodyGyroMag-std()
1. tBodyGyroJerkMag-std()     
1. fBodyAcc-std()-X
1. fBodyAcc-std()-Y
1. fBodyAcc-std()-Z
1. fBodyAccJerk-std()-X
1. fBodyAccJerk-std()-Y       
1. fBodyAccJerk-std()-Z
1. fBodyGyro-std()-X
1. fBodyGyro-std()-Y
1. fBodyGyro-std()-Z
1. fBodyAccMag-std()          
1. fBodyBodyAccJerkMag-std()
1. fBodyBodyGyroMag-std()
1. fBodyBodyGyroJerkMag-std()