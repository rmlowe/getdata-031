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

# Create txt file
x <- data.frame(foo = c("X", "Y"), bar = c(1, 2))
write.table(x = x, file = "./data/tidy.txt", row.names = FALSE)
