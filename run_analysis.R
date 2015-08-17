# Create directory is necessary
path <- "./data"
if (!file.exists(path)) {
  dir.create(path)
}

# Download dataset if necessary
destfile = "./data/getdata-projectfiles-UCI HAR Dataset.zip"
if (!file.exists(destfile)) {
  dataUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url = dataUrl, destfile = destfile)
}


# Step 1
# Merge the training and the test sets to create one data set.

# Note that we don't bother to include the lables (y_train.txt and y_test.txt) since they would be
# eliminated in step 2 in any case.
readFromZip <- function(filename) read.table(file = unz(description = destfile, filename = filename),
                                             stringsAsFactors = FALSE)
trainingPredictors <- readFromZip(filename = "UCI HAR Dataset/train/X_train.txt")
testingPredictors <- readFromZip(filename = "UCI HAR Dataset/test/X_test.txt")
predictors <- rbind(trainingPredictors, testingPredictors)


# Step 2
# Extract only the measurements on the mean and standard deviation for each measurement. 

# First read the feature names.
features <- readFromZip(filename = "UCI HAR Dataset/features.txt")[, 2]
meanOrStd <- grepl(pattern = "(mean|std)\\(\\)", x = features)
meansAndStds <- predictors[, meanOrStd]


# Step 3
# Use descriptive activity names to name the activities in the data set

# Load the activity names
activities <- readFromZip(filename = "UCI HAR Dataset/activity_labels.txt")
names(activities) <- c("id", "name")


# Step 4
# Appropriately label the data set with descriptive variable names. 

descriptiveNames <- function(x) gsub(pattern = "Mag",
                                     replacement = "Magnitude",
                                     x = gsub(pattern = "Gyro",
                                              replacement = "Gyroscope",
                                              x = gsub(pattern = "Acc",
                                                       replacement = "Accelerometer",
                                                       x = gsub(pattern = "\\(\\)",
                                                                replacement = "",
                                                                x = gsub(pattern = "BodyBody",
                                                                         replacement = "Body",
                                                                         x = x)))))
names(meansAndStds) <- descriptiveNames(features[meanOrStd])


# Step 5
# From the data set in step 4, create a second, independent tidy data set with the average of each
# variable for each activity and each subject.


# Create txt file
tidy <- data.frame(foo = c("X", "Y"), bar = c(1, 2))
write.table(x = tidy, file = "./data/tidy.txt", row.names = FALSE)
