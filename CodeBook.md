---
title: "Tidy Data Codebook"
output: html_document
---

This codebook contains three sections: Information about the source of the data and raw data files. description of variables, and a description of the process for cleaning and transforming the data data into a tidy dataframe.

**Data**

The data used to create the tidy dataframe r were obtained from experiments conducted at UC Irvine with a group of 30 volunteers between the ages of 19 and 48.  Each person performed six activities (walking, walking Upstairs, walking downstairs, sitting, standing, and laying) wearing a smartphone (Samsung Galaxy S II) on their waists.  Three axial linear acceleration and angular velocity measurements were collected from each participant's phone's embedded accelerator and gyroscope and processed to yield the data raw data.   The researchers collecting the data partitioned it into training (70% of volunteers) and test (30% of volunteers) sets.

The data can be downloaded as a zip archive from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  The archive includes the following files that are relevant to the tidy data set created here:

* X_train.txt - numeric training data set values
* x_train.txt - activities for each row of the training data designated by an integer
* X_test.txt -numeric test data set values
* y_test.txt - activities for each row of the test set data designated by an integer
* subject_train.txt - subjects, identified by an integer, who performed the activities for each row of the train dataset
* subject_test.txt - subjects, identified by an integer who performed the activities for each row of the train dataset
* activity_labels.txt - identification of activiites in in x_test.txt and y_test.txt by their names
* features.txt - list of feature names corresponding to the columns in X_train.txt and X_test.txt

The archive also contains a file named features_info.txt which provides information about the variables and a readme file.

**Description of Variables**

**subject** - A number from 1-30 identifying subjects participating in the test. Class - integer.
          
**activity** - Activities undertaken by subjects. Class - factor, Levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING,
                           
**timeBodyAccelerationMeanX (Y or Z)** - Mean of each subject's normalized means of  body linear acceleration for X (Y or Z) signals for the time domain. Class - numeric,
                                     
**timeBodyAccelerationStdX (Y or Z)** - Mean of the  standard deviations of each subject's normalized  means of body linear acceleration for X (Y or Z) signals for the time domain. Class - numeric,
                                     
**timeGravityAccelerationMeanX (Y of Z)** - Mean of each subject's normalized means of  gravity acceleration for X (Y or Z) signals for the time domain. Class - numeric,
                                        
**timeGravityAccelerationStdX (Y or Z)** - Mean of the standard deviations of each subject's normalized means of  gravity acceleration for X (Y or Z) for the time domain. Class - numeric,
                                       
**timeBodyAccelerationJerkMeanX (Y or Z)**  - Mean of each subject's normalized means of body acceleration jerk X (Y or Z) for the time domain. Class - numeric,
                                          
**timeBodyAccelerationJerkStdX (Y or Z)**  - Mean of of the standard deviations of each subject's normalized means for body acceleration jerk X (Y or Z) for the time domain. Class - numeric,
                                         
**timeBodyGyroMeanX (Y or Z)** - Mean of each subject's normalized means of body gyroscopic X (Y or Z)  for the time domain. Class - numeric,
                             
**timeBodyGyroStdX (Y or Z)** - Mean of the standard deviations of each subject's normalized means of  body gyroscopic for X (Y or Z) for the time domain. Class - numeric,
                            
**timeBodyGyroJerkMeanX (Y or Z)** - Mean of each subject's normalized means of body gyroscopic jerk X (Y or Z) for the time domain. Class - numeric,
                                 
**timeBodyGyroJerkStdX (Y or Z)** - Mean of the standard deviations of each subject's normalized means of body gyroscopic jerk X (Y or Z) for the time domain. Class - numeric.
                                
**timeBodyAccelerationMagnitudeMean** - Mean of each subject's means of the magnitude of the 
body acceleration for the time domain. Class - numeric.
                                     
**timeBodyAccelerationMagnitudeStd** - Mean of the standard deviations of each subject's means of the magnitude of the body acceleration values for the time domain. Class - numeric.

**timeGravityAccelerationMagnitudeMean** - Mean of each subject's means of the magnitude of the gravity acceleration for the time domain.  Class - numeric.

**timeGravityAccelerationMagnitudeStd** - Mean of the standard deviations each subject's means of the magnitude of the gravity acceleration for the time domain.  Class - numeric.

**timeBodyAccelerationJerkMagnitudeMean** - Mean of each subject's means of the the magnitude of body acceleration jerk for the time domain. Class - numeric.
                                   
**timeGravityAccelerationJerkMagnitudeStd** - Mean of the standard deviations of each subject's means of the magnitude of the gravity acceleration jerk of the time domain. Class - numeric.
                                       
**timeGravityAccelerationMagnitudeStd** - Mean of the standard deviations of each subject's means of the 
magnitude of the gravity acceleration magnitude for the time domain. Class - numeric.
                                   
**timeBodyGyroMagnitudeMean** - Mean of each subject's means of the magnitude of the body gyroscopic magnitude for the time domain. Class - numeric.

**timeBodyGyroMagnitudeStd** - Mean of the standard deviations of each subject's means of the body gyroscopic magnitude for the time domain. Class - numeric.

**timeBodyGyroJerkMagnitudeMean** - Mean of each subject's means of the magnitude of the body gyroscopic jerk for the time domain. Class - numeric.
                           
**timeBodyGyroJerkMagnitudeStd** - Mean of the standard deviations of each subject's means of the magnitude of the body gyroscopic jerk for the time domain. Class - numeric.
                               
**frequencyeBodyAccelerationMeanX (Y or Z)** - Mean of each subject's normalized means for the body linear acceleration X (Y or Z) for the frequency domain. Class - numeric.
                                     
**frequencyBodyAccelerationStdX (Y or Z)** - Mean of the standard deviations of each subject's normalized  
means for body linear acceleration for X (Y or Z) for the frequency domain. Class - numeric.
                                                                        
**frequencyBodyAccelerationJerkMeanX (Y or Z)**  - Mean of each subject's normalized means for body acceleration jerk X  (Y or Z) for the frequency domain. Class - numeric.
                                          
**frequencyBodyAccelerationJerkStdX (Y or Z)**  - Mean of of the standard deviations of each subject's   
normalized means for body acceleration jerk X (Y or Z) for the frequency domain. Class - numeric.
                                         
**frequencyBodyGyroMeanX (Y or Z)** - Mean of each subject's normalized means for body gyroscopic X (Y or Z) for the frequency domain. Class - numeric.
                             
**frequencyBodyGyroStdX (Y or Z)** - Mean of the standard deviations of each subject's normalized means  
for body gyroscopic X (Y or Z) for the frequency domain. Class - numeric.
                                
**frequencyBodyAccelerationMagnitudeMean** - Mean of each subject's means of the body acceleration magnitude for the frequency domain. Class - numeric.
                                         
**frequencyBodyAccelerationMagnitudeStd** - Mean of the standard deviations of each subject's means of the 
of the body acceleration magnitude for the frequency domain. Class - numeric.
                                                                                                             
**frequencyBodyAccelerationJerkMagnitudeMean**  - Mean of each subject's means of the magnitude of the  
body acceleration jerk magnitude for the frequency domain. Class - numeric.
                                              
**frequencyBodyAccelerationJerkMagnitudeStd** - Mean of the standard deviations of each subject's means of the body acceleration jerk magnitude magnitude for the frequency domain. Class - numeric.
                                       
**frequencyBodyGyroMagnitudeMean** - Mean of each subject's means of the body gyro magnitude for the frequency domain. Class - numeric.
                            
**frequencyBodyGyroMagnitudeStd** - Mean of the standard deviation of each subject's means of the body gyro magnitude for the frequency domain. Class - numeric.

**Process for Data Cleaning and Transformation**

Each train and test dataset provided is fragmented into several files: the data itself, subjects, activities, activity labels and a list of variables (features),  The script in run_analysis.R creates a subdirectory (tidydata) in the users working directory, downlaods the data and peforms all operations to create a single tidy data set of the average of each variable for each activity and each subject.  The reshape2 package must be installed before running the script.  The run_analysis.R script performs the following operations:

* Creating a subdirectory called tidydata in the users working directory if tidydata doesn't exist.
* Downloading and unzipping the data archive creating a new directory called UCI HAR Dataset.
* Reading files into R for, train and test data, their respective subjects and activities, and the variables, and activity labels for the data.
* Combining train and test data with their respective values for subjects and activities.
* Adding column names for subject, activities, and features (variables) to train and test datasets.
* Merging train and test datasets vertically to create a single dataframe.
* Creating a subset of the combined dataframe with columns for subject, activities, and mean and standard deviation for all variables.
* Labeling activities in the subset with descriptive names and relabeling variable column names with more descriptive ones.
* Creating a final tidy dataframe from the subset containing the average of each variable for each activity and each subject.
* Writing the final dataframe to disc as a tab delimited text file named tidydata.txt.

Comments in the script provide additional information about the process.