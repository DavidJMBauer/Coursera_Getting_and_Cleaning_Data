****Code Book****

url ... url of the original dataset
path ... filepath to save and retrive the original dataset

Lables ... Dataframe containing Lables and matching activities

features ... Dataframe containing the featurenames

subject_test ... Dataframe specifying which subject originated which data in the test set  
X_test ... Dataframe containing the variables/features extracted from test data   
y_test ... Dataframe containing the type of activity the subject was performing in the test set  
y_test_lab ... Dataframe containing the (more readably) labled type of activity the subject was performing in the test set  

subject_train ... Dataframe specifying which subject originated which data in the train set  
X_train ... Dataframe containing the variables/features extracted from train data   
y_train ... Dataframe containing the type of activity the subject was performing in the train set  
y_test_lab ... Dataframe containing the (more readably) labled type of activity the subject was performing in the train set  

Subject ... Dataframe specifying which subject originated which data in the test and train set  
X ... Dataframe containing the variables/features extracted from test and train data  
y ... Dataframe containing the (more readably) labled type of activity the subject was performing in the test and train set  

ind ... indexing variable to specify all measurements of mean and standard deviation  

X_filtered ... Dataframe containing the means and standard devation calculated from test and train data  

dataset ... Dataframe containing the variables "Subject", "X_filtered" and "y"  

*dataset_2* ... Dataframe with the average of mean and standard deviation for each activity and each subject  
