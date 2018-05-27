# Note that the working directory will need to be set to the this file's 
# directory before executing this script.
# setwd("~/CourseFiles/Course3/Week4Project")

# Helper functions - note that these would ordinarily be in a separate sourced 
# file but the project did not indicate that this was acceptable so they are 
# defined at the top of the file.
Download.UCI.HAR.Dataset <- function(finalFolder)
{
  rootDataFolder <- './Data'
  zipFileName <- './Data/ZippedDataset.zip'
  zipFileURL <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
  unzippedDirectoryName <- 'UCI HAR Dataset'
  
  dir.create(rootDataFolder, showWarnings = FALSE)
  if (!file.exists(zipFileName))
  {
    download.file(zipFileURL, zipFileName, method="curl")
  }
  if (file.exists(zipFileName) && 
      (!file.exists(unzippedDirectoryName) && !file.exists(finalFolder)))
  { 
    unzip(zipFileName)
  }
  if (file.exists(unzippedDirectoryName) && !file.exists(finalFolder)) 
  { 
    file.rename(from = unzippedDirectoryName, to = finalFolder)
  }
}

MakeCleanFeatureNames <- function(featureNames)
{
  cleanFeatureNames = gsub('mean', 'Mean', featureNames)
  cleanFeatureNames = gsub('std', 'Std', cleanFeatureNames)
  cleanFeatureNames = gsub('[-()]', '', cleanFeatureNames)
  cleanFeatureNames = gsub('^t', 'Time', cleanFeatureNames)
  cleanFeatureNames = gsub('^f', 'Freq', cleanFeatureNames)
  
  return(cleanFeatureNames)
}

LoadObservationData <- function(datasetFolder, setString, valueNdxs, valueNames, activityLabels)
{
  dataFile.subject <- file.path(datasetFolder, sprintf('%s/subject_%s.txt', setString, setString))
  dataFile.activity <- file.path(datasetFolder, sprintf('%s/y_%s.txt', setString, setString))
  dataFile.values <- file.path(datasetFolder, sprintf('%s/X_%s.txt', setString, setString))
  
  data.subject <- read.table(dataFile.subject)
  data.activity <- read.table(dataFile.activity)
  data.values <- read.table(dataFile.values)[valueNdxs]
  
  data <- cbind(data.subject, data.activity, data.values)
  colnames(data) <- c('SubjectId', 'ActivityId', valueNames)
  data$ActivityId <- factor(data$ActivityId, levels = activityLabels[,1], labels = activityLabels[,2])
  data$SubjectId <- as.factor(data$SubjectId)
  
  return(data)
}

# beginning of main script

datasetFolder <- './Data/UCI HAR Dataset'
featuresFile <- file.path(datasetFolder, 'features.txt')
activityLabelsFile <- file.path(datasetFolder, 'activity_labels.txt')

Download.UCI.HAR.Dataset(datasetFolder)
features <- read.table(featuresFile, stringsAsFactors = FALSE)
activityLabels <- read.table(activityLabelsFile, stringsAsFactors = FALSE)

featuresMeanStd.Ndxs <- grep('.*mean.*|.*std.*', features[,2])
featureNameSubset <- features[featuresMeanStd.Ndxs,2]
cleanFeatureNames <- MakeCleanFeatureNames(featureNameSubset)

trainData <- LoadObservationData(datasetFolder, 'train', 
                                 featuresMeanStd.Ndxs, cleanFeatureNames, activityLabels)
testData <- LoadObservationData(datasetFolder, 'test', 
                                featuresMeanStd.Ndxs, cleanFeatureNames, activityLabels)
allData <- rbind(trainData, testData)

observationNdxs <- which(!(names(allData) %in% c('SubjectId', 'ActivityId')))
observationNames <- names(allData[, observationNdxs])
allObservations <- allData[, observationNdxs]
allCategories <- list(ActivityId=allData$SubjectId, SubjectId=allData$ActivityId)
subjectActivityMeans <- aggregate(allObservations, by = allCategories, mean)
names(subjectActivityMeans) <- c('SubjectId', 'ActivityId', paste0('GroupMean_', observationNames))

write.table(subjectActivityMeans, 'TidyGroupedMeans.txt', row.names = FALSE, quote = FALSE)