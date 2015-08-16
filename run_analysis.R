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
train <- read.table(file = unz(description = destfile,
                               filename = "UCI HAR Dataset/train/X_train.txt"))

# Step 2
# Extract only the measurements on the mean and standard deviation for each measurement. 

# Step 3
# Use descriptive activity names to name the activities in the data set

# Step 4
# Appropriately label the data set with descriptive variable names. 

# Step 5
# From the data set in step 4, create a second, independent tidy data set with the average of each
# variable for each activity and each subject.

# Create txt file
tidy <- data.frame(foo = c("X", "Y"), bar = c(1, 2))
write.table(x = tidy, file = "./data/tidy.txt", row.names = FALSE)
