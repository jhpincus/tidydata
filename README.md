Tidy Data Project
========
The goal of this project is to create an R script that processes a particular raw dataset into tidy data.  The principles of tidy data have been defined by Hadley Wickham: http://vita.had.co.nz/papers/tidy-data.pdf.

The data used for this project are from a study about human activity recognition using smartphone data and can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  Additional information about the data set can be found in the codebook and here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

This repo includes:

* An R script run_analysis.R that converts the raw data to a tidy data set.
* A codebook that describes the raw data files, the variables of the tidy data set, and how the script works.

Running run_analysis.R will create a directory named tidydata in the users working directory if it doesn't exist and perform the operaations to produce a tab delimited file tidydata.txt in the that directory.  Here is a summary of how the script works.  A more detaled description is in the codebook and comments in the script.

* Creating a subdirectory called tidydata in the users working directory if it doesn't exist.
* Downloading the data archive with files for data, subjects, activities, and variable names and unzipping it.
* Reading the files for data, activities, subjects, and variable names into R.
* Combining files in the previous step into a single dataframe with all columns named.
* Creating a subset of columns with mean and standard deviation from the combined dataset.
* Relabeling columns and activities with descriptive names.
* Reshaping the final tidy dataframe (tidydata.txt)set from the subset into a dataframe containing the average of each variable for each activity and each subject.
* Writing the tidydata.txt to disc as a tab delimited text file.

The file tidydata.txt is best viewed by reading it into a variable in R with the read.table function with header = TRUE 

Comments in the script provide additional information about the process.

