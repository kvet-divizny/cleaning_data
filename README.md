# Getting and Cleaning Data: peer assignment project

The goal of the project is to create a tidy dataset from the source data (Human Activity Recognition Using Smartphones Data Set from [Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)). This is done via `run_analysis.R` script.

### Getting the data

If not already present, the script creates `data` folder in the working directory, downloads the archive with source data and extracts its content into the `data` directory.

### Reading and merging the data

In the next step, content from several different files is loaded and merged together:

- `./data/UCI HAR Dataset/test/X_test.txt` and `./data/UCI HAR Dataset/train/X_train.txt` (actual training and testing data, contains measurement of different features for each subject, both datasets are merged together via `rbind`function)
- `./data/UCI HAR Dataset/features.txt` (list of features, source for variable names in dataset)
- `./data/UCI HAR Dataset/test/subject_test.txt` and `./data/UCI HAR Dataset/train/subject_train.txt` (contains information about subjects for training and testing data, added as new column to the dataset)
- `./data/UCI HAR Dataset/test/y_test.txt` and `./data/UCI HAR Dataset/train/y_train.txt` (contains information about performed activities for training and testing data, added as new column to the dataset)

As some variables in the datasets are not correctly recognized as numeric, the script transforms them to numeric via `mutate_if` function.


### Subsetting the data

We are only interested in measures of mean and standard deviation, other columns should be dropped from the dataset. This is done in two steps. First, names of desired columns are found with `grepl` function and saved as a new character vector. After that, the original dataset is subsetted with this vector.


### Adding activity names

Performed activity for each measurement is marked by number from 1 to 6. In order to add more readable activity labels, the script loads `./data/UCI HAR Dataset/activity_labels.txt` file which contains clean label for each activity number and merges it with the main dataset via `left_join` function. Original column with activity numbers it then dropped from the main dataset.

### Renaming the variables

In the next step, the script changes original variable names to more tidy format. Parentheses are deleted, blank spaces are substituted with underscores a whole names are transformed to lower case. So variable `1 tBodyAcc-mean()-X` is now `1_tbodyacc-mean-x` and so on.

### Computing the average values

The average of each variable should be computed for each activity and each subject. To do so, the script groups the dataset by `subject` and `activity_label` (with `group_by` function). For each combination of subject and performed action is then computed mean of every other variable via `summarise_all` function.

The final dataset is then axported as `avg_data.txt`.