<h3>This is part of the my submission for the Peer-Graded-Assignement for the "Getting and cleaning Data Course" on Coursera.org:</h3>

The code contained in the "run_analysis.R" file does the following:
1. Downloads the data from the source given below, and then unpacks it.
2. Loading lables, label names and feature names
3. Loading the data from the training set and matching human-readable lables to activites
4. Loading the data from the test set and matching human-readable lables to activites
5. Merging test and training data
6. Extracting mean and standard devataion features
7. Combining the data collected so far into one singel dataframe
8. Creating a second dataframe containing the average(mean) of the mean and standard deviation features grouped by subject and activity

**The end result of step 8 is saved in the file "tidy_ds.txt".

- To run the code the "dplyr" package is required.
If it is not allready installed you may do so by typing:
"install.packages("dplyr")"


The data analyzed is obtained from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Whereas a more detailed description of the data and the project from which it originates can be found at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
