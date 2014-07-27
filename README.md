Tidy Data Project
========

**Project Gaol**

The goal of this project is to create an R script that processes a raw dataset into tidy data.  The principles of tidy data have been defined by Hadley Wickham: http://vita.had.co.nz/papers/tidy-data.pdf.

**Data**

The data for this project are from a study about human activity recognition using a smartphone data conducted by researchers at UC Irvine.  The project's web page is: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

A group of 30 volunteers between the ages of 19 and 48 wore a Samsung Galaxy SII samrtphone on their waist and performed six activities- walking, walking upstairs, walking downstairs, sitting, standing, and layin.).  Three axial linear acceleration and angular velocity measurements were collected from each phone's embedded accelerator and gyroscope and processed to yield the raw data.   The data for all participants ws partitioned it into training (70%) and test (30%) sets.

The data is available in a zip archive at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  The following files from that archive were used in this project:

* X_train.txt - numeric training data set values
* x_train.txt - activities for each row of the training data designated by an integer
* X_test.txt -numeric test data set values
* y_test.txt - activities for each row of the test set data designated by an integer
* subject_train.txt - subjects, identified by an integer, who performed the activities for each row of the train dataset
* subject_test.txt - subjects, identified by an integer who performed the activities for each row of the train dataset
* activity_labels.txt - identification of activiites in in x_test.txt and y_test.txt by their names
* features.txt - list of feature names corresponding to the columns in X_train.txt and X_test.txt.

The archive also contains a file named features_info.txt which provides information about the variables and a readme file describing the study, and other files not used for this project.

**Repo Contents**

This repo contains:

* CodeBook.md -A description of the variables of the tidy data set.
* README.md - Thsi readme file
* run_analysis.R An R script that downloads the archive, unzips it, and processes the raw data files to produce  a tidy data set.

**Description of run_analysis.R Operation**

The train and test datasets are ragmented into several files described above in more detail: the data itself, subjects, activities, activity labels, and a list of variables (features),  The script in run_analysis.R creates a subdirectory (tidydata) in the users working directory, downlaods the data and peforms all operations to create a single tidy data set of the average of each variable for each activity and each subject.  The reshape2 package must be installed before running the script.

The UC Irvine study produced 561 features (variables).  The run_analysis.R opertions prouce a tidy data set reduces those to 68 variables for subject, activity, and the average of the mean and standard deviation of each measurement for each subject for each activity.

The resahpe2 package must be installed before using the run_analysis script.  The script works by:

* Creating a subdirectory called tidydata in the users working directory if tidydata doesn't exist.
* Downloading and unzipping the data archive into tidydata and creating a subdirectory called UCI HAR Dataset.
* Reading files into R for, train and test data, and their respective subject,sactivities, features, and activity labels.
* Combining train and test data with their respective values for subjects and activities.
* Adding column names for subject, activities, and features to the train and test datasets.
* Merging the train and test datasets vertically to create a single dataframe.
* Creating a subset of the combined dataframe with columns for subject, activities, and mean and standard deviation for of the features only.
* Labeling activities column of the subset with descriptive names and relabeling features column names with more descriptive ones.
* Melting and reshaping the subsetinto a tidy data set containing with the average of each mean and standard deviation for each activity and each subject.
* Writing the tidy data to disc as a tab delimited text file named tidydata.txt.

Comments in the script provide additional information about the process.

The file tidydata.txt is best viewed by reading it into a variable in R with the read.table function with header = TRUE

