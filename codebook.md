Project codebook 
=================

The dataset `avg_data.txt` contains values of various measurements obtained from accelerometer and gyroskop in Samsung Galaxy S II smartphones averaged for each combination of subject and type of activity smartphones. For more information about the process of obtainig a preprocessing the source data see [the project repository at MLR](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)).

The features represented by included variables are describet in the original documentation as follows:

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tacc-xyz and tgyro-xyz. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tbodyacc-xyz and tgravityacc-xyz) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>
>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain jerk signals (tbodyaccjerk-xyz and tbodygyrojerk-xyz). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tbodyaccmag, tgravityaccmag, tbodyaccjerkmag, tbodygyromag, tbodygyrojerkmag). 
>
>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fbodyacc-xyz, fbodyaccjerk-xyz, fbodygyro-xyz, fbodyaccjerkmag, fbodygyromag, fbodygyrojerkmag. (Note the 'f' to indicate frequency domain signals). 
>
>These signals were used to estimate variables of the feature vector for each pattern:  
'-xyz' is used to denote 3-axial signals in the X, Y and Z directions.
>
>**tbodyacc-xyz**
>**tgravityacc-xyz**
>**tbodyaccjerk-xyz**
>**tbodygyro-xyz**
>**tbodygyrojerk-xyz**
>**tbodyaccmag**
>**tgravityaccmag**
>**tbodyaccjerkmag**
>**tbodygyromag**
>**tbodygyrojerkmag**
>**fbodyacc-xyz**
>**fbodyaccjerk-xyz**
>**fbodygyro-xyz**
>**fbodyaccmag**
>**fbodyaccjerkmag**
>**fbodygyromag**
>**fbodygyrojerkmag**


From the original set of variables estimated for these features, only measurments of mean and standard deviation are included:

mean: Mean value
std: Standard deviation


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle variable:

**gravitymean**
**tbodyaccmean**
**tbodyaccjerkmean**
**tbodygyromean**
**tbodygyrojerkmean**


As noted, the averages were computed for each combination of subject and performed activity:

**subject** = identity of each subject is encoded as a number from 1 to 30
**activity_label** = one of regular activities ("LAYING"/"SITTING"/"STANDING"/"WALKING"/"WALKING_DOWNSTAIRS"/"WALKING_UPSTAIRS")

The complete list of variables is:

subject
activity_label
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-mean()
tBodyAccMag-std()
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
tBodyGyroMag-mean()
tBodyGyroMag-std()
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAcc-meanFreq()-X
fBodyAcc-meanFreq()-Y
fBodyAcc-meanFreq()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyAccJerk-meanFreq()-X
fBodyAccJerk-meanFreq()-Y
fBodyAccJerk-meanFreq()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyGyro-meanFreq()-X
fBodyGyro-meanFreq()-Y
fBodyGyro-meanFreq()-Z
fBodyAccMag-mean()
fBodyAccMag-std()
fBodyAccMag-meanFreq()
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()
fBodyBodyAccJerkMag-meanFreq()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()
fBodyBodyGyroMag-meanFreq()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()
fBodyBodyGyroJerkMag-meanFreq()
angle(tBodyAccMean,gravity)
angle(tBodyAccJerkMean),gravityMean)
angle(tBodyGyroMean,gravityMean)
angle(tBodyGyroJerkMean,gravityMean)
angle(X,gravityMean)
angle(Y,gravityMean)
angle(Z,gravityMean)


