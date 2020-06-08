library(tidyverse)

# download and unzip files

if (!dir.exists("./data")) {dir.create("./data")}
if (!file.exists("./data/project_dataset.zip")) {
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                "./data/project_dataset.zip")
  
  unzip("./data/project_dataset.zip", exdir = "./data")
  }


# read the data

features <- read_lines("./data/UCI HAR Dataset/features.txt")


test_x_read <- read_delim("./data/UCI HAR Dataset/test/X_test.txt", delim = " ",
                     col_names = features)

train_x_read <- read_delim("./data/UCI HAR Dataset/train/X_train.txt", delim = " ",
                           col_names = features)

# change all variables to numeric (if needed)

test_x <- test_x_read %>% 
  mutate_if(is.character, as.numeric)

train_x <- train_x_read %>% 
  mutate_if(is.character, as.numeric)


# add info about subjects and activities

test_x$subject <- read_lines("./data/UCI HAR Dataset/test/subject_test.txt")
test_x$activity <- read_lines("./data/UCI HAR Dataset/test/y_test.txt")


train_x$subject <- read_lines("./data/UCI HAR Dataset/train/subject_train.txt")
train_x$activity <- read_lines("./data/UCI HAR Dataset/train/y_train.txt")


# merge them into one

merged <- rbind(train_x, test_x)


# select only measurments of mean and standard deviation

subset_variables <- features[grepl("[mM]ean|std", features)]
merged_subset <- merged %>% select(all_of(subset_variables), subject, activity)


# add descriptive activity names

activity_labels <- read_delim("./data/UCI HAR Dataset/activity_labels.txt", delim = " ",
                              col_names = c("activity_number", "activity_label"),
                              col_types = "cc")


merged_subset <- left_join(merged_subset, activity_labels, by = c("activity" = "activity_number")) %>% 
  select(-activity)


# clean up variable names a little (remove parentheses and replace spaces via nested gsub)

names(merged_subset) <- tolower(gsub("\\(\\)", "", gsub(" ", "_", names(merged_subset))))


# compute average values for each subject and activity

variable_means <- merged_subset %>% group_by(subject, activity_label) %>% 
  summarise_all(mean)


# export the final dataset
write.table(variable_means, file = "./avg_data.txt", row.names = FALSE)
