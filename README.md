Getting and Cleaning Data Course Project
========================================================

The following steps are used to execute the run_analysis.R script:

1. Create a project folder.
1. Download and unzip the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip into a subfolder called "data" in the project folder.
2. Save the "run_analysis.R" into the project folder.
3. Open RStudio and set the working directory to the project directory.
4. Execute the *source("run_analysis.R")* command in RStudio.
5. The output of the script will be as follows:
- *merged_data.txt* containing the data frame *cleanedData* (dimension = 10299*68)
- *data_with_means.txt* containing a data frame called *result* with 180*68 dimension.
6. Read the *data_with_means.txt* file into RStudio to double check the output.

