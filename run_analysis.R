# Change the work directory
originalDir <- getwd()
if(!grepl("UCI HAR Dataset$", getwd()))
  setwd(dir = "./UCI\ HAR\ Dataset/")

# Exercise 1 - Merges the training and the test sets to create one data set.

# merge the subject
dataFrame1 <- read.table(file = "./test/subject_test.txt")
dataFrame2 <- read.table(file = "./train/subject_train.txt")
subject <- merge.data.frame(dataFrame1, dataFrame2)

# merge x
dataFrame1 <- read.table(file = "./test/X_test.txt")
dataFrame2 <- read.table(file = "./train/X_train.txt")
x <- rbind(dataFrame1, dataFrame2)

# merge y
dataFrame1 <- read.table(file = "./test/Y_test.txt")
dataFrame2 <- read.table(file = "./train/Y_train.txt")
y <- rbind(dataFrame1, dataFrame2)

# merge acc x, y e z
dataFrame1 <- read.table(file = "./test/Inertial\ Signals/body_acc_x_test.txt")
dataFrame2 <- read.table(file = "./train/Inertial\ Signals/body_acc_x_train.txt")
accX <- rbind(dataFrame1, dataFrame2)
dataFrame1 <- read.table(file = "./test/Inertial\ Signals/body_acc_y_test.txt")
dataFrame2 <- read.table(file = "./train/Inertial\ Signals/body_acc_y_train.txt")
accY <- rbind(dataFrame1, dataFrame2)
dataFrame1 <- read.table(file = "./test/Inertial\ Signals/body_acc_z_test.txt")
dataFrame2 <- read.table(file = "./train/Inertial\ Signals/body_acc_z_train.txt")
accZ <- rbind(dataFrame1, dataFrame2)

# merge gyro x, y, z
dataFrame1 <- read.table(file = "./test/Inertial\ Signals/body_gyro_x_test.txt")
dataFrame2 <- read.table(file = "./train/Inertial\ Signals/body_gyro_x_train.txt")
gyroX <- rbind(dataFrame1, dataFrame2)
dataFrame1 <- read.table(file = "./test/Inertial\ Signals/body_gyro_y_test.txt")
dataFrame2 <- read.table(file = "./train/Inertial\ Signals/body_gyro_y_train.txt")
gyroY <- rbind(dataFrame1, dataFrame2)
dataFrame1 <- read.table(file = "./test/Inertial\ Signals/body_gyro_z_test.txt")
dataFrame2 <- read.table(file = "./train/Inertial\ Signals/body_gyro_z_train.txt")
gyroZ <- rbind(dataFrame1, dataFrame2)

# merge total acc x, y, z
dataFrame1 <- read.table(file = "./test/Inertial\ Signals/total_acc_x_test.txt")
dataFrame2 <- read.table(file = "./train/Inertial\ Signals/total_acc_x_train.txt")
totalX <- rbind(dataFrame1, dataFrame2)
dataFrame1 <- read.table(file = "./test/Inertial\ Signals/total_acc_y_test.txt")
dataFrame2 <- read.table(file = "./train/Inertial\ Signals/total_acc_y_train.txt")
totalY <- rbind(dataFrame1, dataFrame2)
dataFrame1 <- read.table(file = "./test/Inertial\ Signals/total_acc_z_test.txt")
dataFrame2 <- read.table(file = "./train/Inertial\ Signals/total_acc_z_train.txt")
totalZ <- rbind(dataFrame1, dataFrame2)

# Return to the original directory
if(!grepl(originalDir, getwd()))
  setwd(originalDir)