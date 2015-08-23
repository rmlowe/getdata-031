library(dplyr)
library(tidyr)

# Create directory if necessary
path <- "./data"
if (!file.exists(path)) {
  dir.create(path)
}

# Download data set if necessary
destfile = "./data/getdata-projectfiles-UCI HAR Dataset.zip"
if (!file.exists(destfile)) {
  dataUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url = dataUrl, destfile = destfile)
}


# Step 1
# Merge the training and the test sets to create one data set.

# First load the data
readFromZip <- function(filename) read.table(file = unz(description = destfile, filename = filename),
                                             stringsAsFactors = FALSE)
trainingPredictors <- readFromZip(filename = "UCI HAR Dataset/train/X_train.txt")
trainingLabels <- readFromZip(filename = "UCI HAR Dataset/train/y_train.txt")
testingPredictors <- readFromZip(filename = "UCI HAR Dataset/test/X_test.txt")
testingLabels <- readFromZip(filename = "UCI HAR Dataset/test/y_test.txt")

# Combine the predictors with the labels
training <- cbind(trainingPredictors, trainingLabels)
testing <- cbind(testingPredictors, testingLabels)

# Now combine training and testing data sets
step1 <- rbind(training, testing)


# Step 2
# Extract only the measurements on the mean and standard deviation for each measurement. 

# First read the feature names.
features <- readFromZip(filename = "UCI HAR Dataset/features.txt")[, 2]
meanOrStd <- grepl(pattern = "(mean|std)\\(\\)", x = features)

# Be sure to retain the labels too
retain <- c(meanOrStd, TRUE)
step2 <- step1[, retain]


# Step 3
# Use descriptive activity names to name the activities in the data set

# Load the activity names
activities <- readFromZip(filename = "UCI HAR Dataset/activity_labels.txt")
names(activities) <- c("Activity.ID", "Activity")

# Merge with the main data set
names(step2)[67] <- "Activity.ID"
merged <- merge(x = step2, y = activities, by = "Activity.ID")

# Can remove the original integer activity codes
step34 <- merged %>% select(-Activity.ID)


# Step 4
# Appropriately label the data set with descriptive variable names. 

descriptiveNames <-
  function(x) gsub(pattern = "^t",
                   replacement = "time",
                   x = gsub(pattern = "^f",
                            replacement = "frequency",
                            x = gsub(pattern = "Mag",
                                     replacement = "Magnitude",
                                     x = gsub(pattern = "Gyro",
                                              replacement = "Gyroscope",
                                              x = gsub(pattern = "Acc",
                                                       replacement = "Accelerometer",
                                                       x = gsub(pattern = "\\(\\)",
                                                                replacement = "",
                                                                x = gsub(pattern = "BodyBody",
                                                                         replacement = "Body",
                                                                         x = x)))))))
names(step34)[1:66] <- descriptiveNames(features[meanOrStd])


# Step 5
# From the data set in step 4, create a second, independent tidy data set with the average of each
# variable for each activity and each subject.

# Read the subject IDs, and combine with the rest of the data set
subjectTrain <- readFromZip(filename = "UCI HAR Dataset/train/subject_train.txt")
subjectTest <- readFromZip(filename = "UCI HAR Dataset/test/subject_test.txt")
subject <- rbind(subjectTrain, subjectTest)
names(subject) <- c("Subject")
withSubject <- cbind(step34, subject)

# Now create the tidy data
tidy <-
  withSubject %>%
  gather(key = Variable, value = Value, -Activity, -Subject) %>%
  group_by(Activity, Subject, Variable) %>%
  summarize(Average = mean(Value))


# Create txt file
write.table(x = tidy, file = "./data/tidy.txt", row.names = FALSE)
