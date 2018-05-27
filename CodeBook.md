# Code Book - TidyGroupedMeans.txt

This code book describes the columns of the 'TidyGroupedMeans.txt' file. Additional information about the underlaying data can be found at:

* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* within the 'README.txt' file included in the zip file from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Group Identifiers

* 'SubjectId' - The Id for the subject corresponding to the summarized measurement within the row.
* 'ActivityId' - The Id for the activity corresponding to the summarized measurement within the row.

## Measurements

Notes: 

1. All measurements below are the mean value of multiple measurements for the corresponding 'SubjectId' and 'ActivityId'.
2. All measurements have the 'GroupMean_' prefix to indicate that they are the mean of a group of other measurements.
3. The prefix 'Time' indicates that the underlaying measurement was of a time data type. The prefix 'Freq' indicates that the underlaying measurement was from a Fourier transform.
4. All measurements were either mean or standard deviation values.

The following measurements are included in the dataset.

* 'GroupMean_TimeBodyAccMeanX' 
* 'GroupMean_TimeBodyAccMeanY' 
* 'GroupMean_TimeBodyAccMeanZ' 
* 'GroupMean_TimeBodyAccStdX' 
* 'GroupMean_TimeBodyAccStdY' 
* 'GroupMean_TimeBodyAccStdZ' 
* 'GroupMean_TimeGravityAccMeanX' 
* 'GroupMean_TimeGravityAccMeanY' 
* 'GroupMean_TimeGravityAccMeanZ' 
* 'GroupMean_TimeGravityAccStdX' 
* 'GroupMean_TimeGravityAccStdY' 
* 'GroupMean_TimeGravityAccStdZ' 
* 'GroupMean_TimeBodyAccJerkMeanX' 
* 'GroupMean_TimeBodyAccJerkMeanY' 
* 'GroupMean_TimeBodyAccJerkMeanZ' 
* 'GroupMean_TimeBodyAccJerkStdX' 
* 'GroupMean_TimeBodyAccJerkStdY' 
* 'GroupMean_TimeBodyAccJerkStdZ' 
* 'GroupMean_TimeBodyGyroMeanX' 
* 'GroupMean_TimeBodyGyroMeanY' 
* 'GroupMean_TimeBodyGyroMeanZ' 
* 'GroupMean_TimeBodyGyroStdX' 
* 'GroupMean_TimeBodyGyroStdY' 
* 'GroupMean_TimeBodyGyroStdZ' 
* 'GroupMean_TimeBodyGyroJerkMeanX' 
* 'GroupMean_TimeBodyGyroJerkMeanY' 
* 'GroupMean_TimeBodyGyroJerkMeanZ' 
* 'GroupMean_TimeBodyGyroJerkStdX' 
* 'GroupMean_TimeBodyGyroJerkStdY' 
* 'GroupMean_TimeBodyGyroJerkStdZ' 
* 'GroupMean_TimeBodyAccMagMean' 
* 'GroupMean_TimeBodyAccMagStd' 
* 'GroupMean_TimeGravityAccMagMean' 
* 'GroupMean_TimeGravityAccMagStd' 
* 'GroupMean_TimeBodyAccJerkMagMean' 
* 'GroupMean_TimeBodyAccJerkMagStd' 
* 'GroupMean_TimeBodyGyroMagMean' 
* 'GroupMean_TimeBodyGyroMagStd' 
* 'GroupMean_TimeBodyGyroJerkMagMean' 
* 'GroupMean_TimeBodyGyroJerkMagStd' 
* 'GroupMean_FreqBodyAccMeanX' 
* 'GroupMean_FreqBodyAccMeanY' 
* 'GroupMean_FreqBodyAccMeanZ' 
* 'GroupMean_FreqBodyAccStdX' 
* 'GroupMean_FreqBodyAccStdY' 
* 'GroupMean_FreqBodyAccStdZ' 
* 'GroupMean_FreqBodyAccMeanFreqX' 
* 'GroupMean_FreqBodyAccMeanFreqY' 
* 'GroupMean_FreqBodyAccMeanFreqZ' 
* 'GroupMean_FreqBodyAccJerkMeanX' 
* 'GroupMean_FreqBodyAccJerkMeanY' 
* 'GroupMean_FreqBodyAccJerkMeanZ' 
* 'GroupMean_FreqBodyAccJerkStdX' 
* 'GroupMean_FreqBodyAccJerkStdY' 
* 'GroupMean_FreqBodyAccJerkStdZ' 
* 'GroupMean_FreqBodyAccJerkMeanFreqX' 
* 'GroupMean_FreqBodyAccJerkMeanFreqY' 
* 'GroupMean_FreqBodyAccJerkMeanFreqZ' 
* 'GroupMean_FreqBodyGyroMeanX' 
* 'GroupMean_FreqBodyGyroMeanY' 
* 'GroupMean_FreqBodyGyroMeanZ' 
* 'GroupMean_FreqBodyGyroStdX' 
* 'GroupMean_FreqBodyGyroStdY' 
* 'GroupMean_FreqBodyGyroStdZ' 
* 'GroupMean_FreqBodyGyroMeanFreqX' 
* 'GroupMean_FreqBodyGyroMeanFreqY' 
* 'GroupMean_FreqBodyGyroMeanFreqZ' 
* 'GroupMean_FreqBodyAccMagMean' 
* 'GroupMean_FreqBodyAccMagStd' 
* 'GroupMean_FreqBodyAccMagMeanFreq' 
* 'GroupMean_FreqBodyBodyAccJerkMagMean' 
* 'GroupMean_FreqBodyBodyAccJerkMagStd' 
* 'GroupMean_FreqBodyBodyAccJerkMagMeanFreq' 
* 'GroupMean_FreqBodyBodyGyroMagMean' 
* 'GroupMean_FreqBodyBodyGyroMagStd' 
* 'GroupMean_FreqBodyBodyGyroMagMeanFreq' 
* 'GroupMean_FreqBodyBodyGyroJerkMagMean' 
* 'GroupMean_FreqBodyBodyGyroJerkMagStd' 
* 'GroupMean_FreqBodyBodyGyroJerkMagMeanFreq' 