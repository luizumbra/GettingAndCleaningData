# Change the work directory
originalDir <- getwd()
if(!grepl("UCI HAR Dataset$", getwd()))
  setwd(dir = "./UCI\ HAR\ Dataset/")

### Exercise 1 - Merges the training and the test sets to create one data set.

# merge x
dataFrame1 <- read.table(file = "./test/X_test.txt")
dataFrame2 <- read.table(file = "./train/X_train.txt")
subject <- rbind(dataFrame1, dataFrame2)

# merge y
dataFrame1 <- read.table(file = "./test/Y_test.txt")
dataFrame2 <- read.table(file = "./train/Y_train.txt")
namesDataset <- rbind(dataFrame1, dataFrame2)

### Exercise 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 

# Take the names of the dataset
namesSubject <- names(subject)

# Calculate the mean for each dataset
meanSubject <- lapply(namesSubject, function(x) {
  m <- mean(subject[, x])
  print(paste(x, "mean:", m))
  m
})

# Calculate the standard deviation for each dataset
sdSubject <- lapply(namesSubject, function(x) {
  s <- sd(subject[, x])
  print(paste(x, "standard deviation:", s))
  s
})

### Exercise 3 - Uses descriptive activity names to name the activities in the data set

# Put tha names activity
subject <- cbind(namesDataset, subject)

# Create .txt file
write.table(subject, file = "./TidyData.txt", row.names = FALSE)

# Return to the original directory
if(!grepl(originalDir, getwd()))
  setwd(originalDir)