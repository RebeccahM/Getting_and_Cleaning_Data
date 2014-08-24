CODEBOOK: Getting and Cleaning Data Course Project
=================================================
This file describes the data, variables, and transformations or other work required to create a tidy data set for data collected from the accelerometers from the Samsung Galaxy S smartphone.  

The data is obtained from this website: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data for the project is obtained here:  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

The run_analysis.R script performs the following steps to clean the data and geenrate a tidy data set:   
 1. Read X_train.txt, y_train.txt and subject_train.txt from the "./data/train" folder and store them in *trainData*, *trainLabel* and *trainSubject* variables, respectively.       
 2. Read X_test.txt, y_test.txt and subject_test.txt from the "./data/test" folder and store them in *testData*, *testLabel* and *testsubject* variables, respectively.  
 3. Concatenate *testData* to *trainData* to generate a 10299x561 data frame, *joinData*; concatenate *testLabel* to *trainLabel* to generate a 10299x1 data frame, *joinLabel*; concatenate *testSubject* to *trainSubject* to generate a 10299x1 data frame, *joinSubject*.  
 4. Read the features.txt file from the "/data" folder and store the data in a variable called *features*. Only extract the measurements on the mean and standard deviation. This results in a 66-indices list. We get a subset of *joinData* with the 66 corresponding columns.  
 5. Clean the column names of the subset. Remove the "()" and "-" symbols in the names, as well as make the first letter of "mean" and "std" a capital letter "M" and "S" respectively.   
 6. Read the activity_labels.txt file from the "./data"" folder and store the data in a variable called *activity*.  
 7. Clean the activity names in the second column of *activity*. First make all names to lower cases. If the name has an underscore between letters, remove the underscore and capitalize the letter immediately after the underscore.  
 8. Transform the values of *joinLabel* according to the *activity* data frame.  
 9. Combine the *joinSubject*, *joinLabel* and *joinData* by column to get a new cleaned 10299x68 data frame, *cleanedData*. Properly name the first two columns "subject" and "activity". The "subject" column contains integers that range from 1 to 30 inclusive; the "activity" column contains 6 kinds of activity names; the last 66 columns contain measurements that range from -1 to 1 exclusive.  
 10. Write the *cleanedData* out to "merged_data.txt" file in current working directory.  
 11. Finally, generate a second independent tidy data set with the average of each measurement for each activity and each subject. There are 30 unique subjects and 6 unique activities, which result in a total of 180 pairs. Then, for each combination, calculate the mean of each measurement for each pair of variables. After initializing the *result* data frame and performing the two for-loops, we get a 180x68 data frame.
 12. Write the *result* out to "data_with_means.txt" file in current working directory. 