### Downloading and unziping the dataset###
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
path <- file.path(getwd(), "Acc_data")
download.file(url, path)
unzip(path)


## Loading lables and lable names
#list.files()
Lables <- read.table("UCI HAR Dataset/activity_labels.txt")
colnames(Lables) <- c("lable", "activity")

#Loading Features
features <- read.table(file.path("UCI HAR Dataset", "features.txt"))
colnames(features) <- c("No", "feature")

## Read test data
subject_test <- read.table(file.path("UCI HAR Dataset", "test", "subject_test.txt"), col.names = "subject")
X_test <- read.table(file.path("UCI HAR Dataset", "test", "X_test.txt"), col.names = features$feature)
y_test <- read.table(file.path("UCI HAR Dataset", "test", "y_test.txt"), col.names = "lable")
y_test_lab <- inner_join(y_test, Lables, by = "lable")

## Read train data
subject_train <- read.table(file.path("UCI HAR Dataset", "train", "subject_train.txt"), col.names = "subject")
X_train <- read.table(file.path("UCI HAR Dataset", "train", "X_train.txt"), col.names = features$feature)
y_train <- read.table(file.path("UCI HAR Dataset", "train", "y_train.txt"), col.names = "lable")
y_train_lab <- inner_join(y_train, Lables, by = "lable")

##Merge test and train
Subject <- rbind(subject_test, subject_train)
X <- rbind(X_test, X_train)
y <- rbind(y_test_lab, y_train_lab)


## Extract mean and sd features
ind <- grepl("mean|std",features$feature)

X_filtered <- X[ind]

#comine into one dataset
dataset <- cbind(Subject, X_filtered, y)

library(dplyr)
#str(dataset)
dataset_2 <- group_by(dataset, subject, activity) %>% summarise_all(mean)

write.table(dataset_2, file = "tidy_ds.txt"  , row.names = FALSE)
