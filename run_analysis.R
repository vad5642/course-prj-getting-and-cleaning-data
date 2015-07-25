library(plyr)

###############################################
#  Constants
###############################################
path_dir <- "UCI HAR Dataset"   # path to dirrectory with data
mean_pattern <- "-mean\\(\\)"     # search pattern for mean labels
std_pattern  <- "-std\\(\\)"      # search pattern for standart deviation labels
        
col_name_act <- "Activity"        # Column name for Activity label
col_name_id  <- "SubjectID"       # Column name for subject ID
first_columns <- c(1,2)           # Column indexes for subject ID and Activity label
names(first_columns)  <- c(col_name_id, col_name_act)

# Constants to generate path
data_fn_prefix <- "/x_"          
act_fn_prefix  <- "/y_"
subj_fn_prefix <- "/subject_"

###############################################
# Functions
###############################################
download_data <- function() 
{
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download_dir <- getwd()
  
  zip_file <- paste(download_dir, "data.zip", sep = "/")
  if(!file.exists(zip_file)) { download.file(url, zip_file) }
  
  if(!file.exists(path_dir)) { unzip(zip_file) }
}

# read and create data set 
read_set <- function(nm)
{ 
  read_from_file <-function(px)
  {
    read.delim(file=paste(path_dir, "/", nm, px, nm, ".txt", sep=""), 
               sep="", 
               header=F)
  }

  # Read data
  dat <- read_from_file(data_fn_prefix)
  
  # Read Subject IDs 
  subj <- read_from_file(subj_fn_prefix)
  
  # Read activity class label
  act <- read_from_file(act_fn_prefix)
  
  # Bind read data frames to one set
  cbind(subj, act, dat)
}

###############################################
# Main routine
###############################################

# download and unzip data (if it is required)
download_data()

# Read activity labels
act_names <- read.delim(file=paste(path_dir, "/activity_labels.txt", sep=""), 
                        sep="", 
                        header=F)
# Read feature labels
feat_names <- read.delim(file=paste(path_dir, "/features.txt", sep=""), 
                   sep="", 
                   header=F)

###############################################################
# Merge the training and the test sets to create one data set.
###############################################################
data_set <- read_set("train") 
data_set <- rbind(data_set, read_set("test"))

################################################################
# Extract only the measurements on the mean and standard deviation for each measurement. 
################################################################
# Get wanted columns indexes
wanted_feature_indexes <- c(grep(mean_pattern, feat_names$V2), 
                            grep(std_pattern,  feat_names$V2)) 

# Subset data frame 
data_set <- data_set[, c(first_columns, wanted_feature_indexes+length(first_columns))]

################################################################
# Appropriately label the data set with descriptive variable names.
################################################################

# remove brackets to make feature labels more aestetic 
wanted_features_names <- as.character(feat_names$V2[wanted_feature_indexes])
wanted_features_names <- gsub(mean_pattern, "_Mean", wanted_features_names)
wanted_features_names <- gsub(std_pattern, "_StdDev", wanted_features_names)

# set column names
names(data_set) <- c(names(first_columns), wanted_features_names)

###############################################################
# Use descriptive activity names to name the activities in the data set
###############################################################

data_set[, col_name_act] <- factor(data_set[, col_name_act], 
                                   levels = act_names$V1, 
                                   labels = act_names$V2)

###############################################################
# From the the data set create a second, independent tidy data set with the average of each variable for each activity and each subject.
###############################################################
by_list = list(data_set[,col_name_id], data_set[,col_name_act])
names(by_list) <- names(first_columns)
tidy <- aggregate(data_set[,-first_columns], by=by_list, mean)

###############################################################
# Save it as CSV file
###############################################################
write.table(tidy, "tidy.txt", row.names = F, quote = F, sep = ",")
