Tidy Data Project
========
The goal of this project is to create an R script that processes a particular raw dataset into tidy data.  The principles of tidy data have been defined by Hadley Wickham: http://vita.had.co.nz/papers/tidy-data.pdf.

The data used for this project are from a study about human activity recognition using smartphone data and can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  Additional information about the data set can be found in the codebook and here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

This repo includes:

* An R script run_analysis.R that converts the raw data to a tidy data set.
* A codebook that describes the raw data files, the variables of the tidy data set, and how the script works.

Running run_analysis.R will create a directory in the users working directory if tidydata doesn't exist and produce a tab delimited file tidydata.txt in the that directory.  Here is a summary of how the script works.  A more detaled description is in the codebook and comments in the script.

* Creating a subdirectory called tidydata in the users working directory if tidydata doesn't exist.
* Downloading and unzipping the data archive.
* Reading data files into R.
* Combining files into a single dataset with all columns named.
* Creating a subset of the combined dataset.
* RElabeling columns with descriptive names.
* Creating a final tidy data set from the subset containing the average of each variable for each activity and each subject.
*Writing the final data set to disc as a tab delimited text file.

 Comments in the script provide additional information about the process.

