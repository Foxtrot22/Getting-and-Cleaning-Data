##Getting and Cleaning Data - Course Project

##This project retrieves and cleans data from a wearable computing experiment described at
##http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


##Gathers activity values and corresponding labels
activity_labels <- read.table(file = "./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")
colnames(activity_labels) <- c("Activity_ID", "Activity")


##Gathers feature values and corresponding labels. These will be used as column names
features <- read.table(file = "./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt")
colnames(features) <- c("Column_ID", "Column_Name")


##Gathers the list of subject IDs for each observation in the test and training datasets
subject_test <- read.table(file="./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
colnames(subject_test) <- "Subject"

subject_train <- read.table(file="./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
colnames(subject_train) <- "Subject"


##Gathers the activities for each observation for the test and training datasets.
##Merges the descriptions to the dataset.
y_test_ini <- read.table(file="./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt", header = FALSE)
colnames(y_test_ini) <- "Activity_ID"
y_test <- merge(y_test_ini, activity_labels, by.x="Activity_ID", by.y="Activity_ID")

y_train_ini <- read.table(file="./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt", header = FALSE)
colnames(y_train_ini) <- "Activity_ID"
y_train <- merge(y_train_ini, activity_labels, by.x="Activity_ID", by.y="Activity_ID")


##Loads the main test and training data from the text files. Names the columns with the activity description.
##Also binds the subject IDs and the activities to the dataset.
X_test <- read.table(file="./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt", header = FALSE)
colnames(X_test) <- features$Column_Name
X_test_AS <- cbind(subject_test, y_test, X_test)


X_train <- read.table(file="./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt", header = FALSE)
colnames(X_train) <- features$Column_Name
X_train_AS <- cbind(subject_train, y_train, X_train)


##Unions the test and training data together
X_data <- rbind(X_train_AS, X_test_AS)


##Retrieves the list of activities that are of the mean or standard deviation.
##Removes unnecessary columns from the dataset.
features_retain <- c(features[grep(pattern ="mean\\(", x=features$Column_Name) , 1], features[grep(pattern ="std\\(", x=features$Column_Name) , 1])
features_retain <- c(1,3, features_retain+3) ##Need to add 3 because we added three columns in addition to the main data set. Drops the Activity ID field
Wearable_Training_Test_Data <- X_data[ , features_retain]


##Summarize the results by combination of subject and activity. Requires the dplyr package.
require(dplyr)
Wearable_Aggregated <- group_by(Wearable_Training_Test_Data, Subject, Activity) %>% summarise_each(funs(mean))


##Writes table to a file using write.table
write.table(Wearable_Aggregated, file="Wearable_Aggregated.txt", row.names=FALSE)
