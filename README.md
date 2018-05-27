# Getting And Cleaning Data - Week 4 Project

All functionality for this script is contained in the R file run_analysis.R. It performs the following steps:

1. Download the zipped data if a copy is not already in a predefined location
2. Unzip the data if the data folder is not already in a predefined location
3. Read the features file from the dataset
4. Read the activity labels file from the dataset
5. Identify the indices and labels for the mean and standard deviation measurements
6. Make a set of cleaned measurement names based on pattern replacement
7. Load both train and test datasets combined with subject and activity labels
8. Replace the measurement names with cleaned names for both train and test datasets
9. Combine the train and test datasets
10. Aggregate the combined dataset by subject and activity and summarize the aggregated data with the mean of each measurement
11. Update the summarized dataset names to indicate that the measurements are group means
12. Write the summarized dataset to a file called 'TidyGroupedMeans.txt' in the working directory

Note that the script will write/load data based on the currently set working directory. It was designed with the working directory set to the script location.
