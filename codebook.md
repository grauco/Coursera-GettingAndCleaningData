Codebook for computing dataset
==================================

## Data

source zipped folder: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## What to do

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. With data set in step 4, creates a secondindependent tidy data set with the average of each variable for each activity and each subject.

## Files in the repo
1. Readme.md
2. codebook.md
3. run_analysis.R


## Explaination and Variables

30 persons have tried a Samsung wearable while performing 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). The resulting informations have been recorded and the list of variables saved is the following:

1. "timeBodyAccelerateMeter-mean()-X"
2. "timeBodyAccelerateMeter-mean()-Y"
3. "timeBodyAccelerateMeter-mean()-Z"
4. "timeGravityAccelerateMeter-mean()-X"
5. "timeGravityAccelerateMeter-mean()-Y"
6. "timeGravityAccelerateMeter-mean()-Z"
7. "timeBodyAccelerateMeterJerk-mean()-X"
8. "timeBodyAccelerateMeterJerk-mean()-Y"
9. "timeBodyAccelerateMeterJerk-mean()-Z"
10. "timeBodyGyro-mean()-X"
11. "timeBodyGyro-mean()-Y"
12. "timeBodyGyro-mean()-Z"
13. "timeBodyGyroJerk-mean()-X"
14. "timeBodyGyroJerk-mean()-Y"
15. "timeBodyGyroJerk-mean()-Z"
16. "timeBodyAccelerateMeterMagnitude-mean()"
17. "timeGravityAccelerateMeterMagnitude-mean()"
18. "timeBodyAccelerateMeterJerkMagnitude-mean()"
19. "timeBodyGyroMagnitude-mean()"
20. "timeBodyGyroJerkMagnitude-mean()"
21. "frequencyBodyAccelerateMeter-mean()-X"
22. "frequencyBodyAccelerateMeter-mean()-Y"
23. "frequencyBodyAccelerateMeter-mean()-Z"
24. "frequencyBodyAccelerateMeter-meanFreq()-X"
25. "frequencyBodyAccelerateMeter-meanFreq()-Y"
26. "frequencyBodyAccelerateMeter-meanFreq()-Z"
27. "frequencyBodyAccelerateMeterJerk-mean()-X"
28. "frequencyBodyAccelerateMeterJerk-mean()-Y"
29. "frequencyBodyAccelerateMeterJerk-mean()-Z"
30. "frequencyBodyAccelerateMeterJerk-meanFreq()-X"
31. "frequencyBodyAccelerateMeterJerk-meanFreq()-Y"
32. "frequencyBodyAccelerateMeterJerk-meanFreq()-Z"
33. "frequencyBodyGyro-mean()-X"
34. "frequencyBodyGyro-mean()-Y"
35. "frequencyBodyGyro-mean()-Z"
36. "frequencyBodyGyro-meanFreq()-X"
37. "frequencyBodyGyro-meanFreq()-Y"
38. "frequencyBodyGyro-meanFreq()-Z"
39. "frequencyBodyAccelerateMeterMagnitude-mean()"
40. "frequencyBodyAccelerateMeterMagnitude-meanFreq()"
41. "frequencyBodyAccelerateMeterJerkMagnitude-mean()"
42. "frequencyBodyAccelerateMeterJerkMagnitude-meanFreq()" 43 "frequencyBodyGyroMagnitude-mean()"
44. "frequencyBodyGyroMagnitude-meanFreq()"
45. "frequencyBodyGyroJerkMagnitude-mean()"
46. "frequencyBodyGyroJerkMagnitude-meanFreq()"
47. "angle(tBodyAccelerateMeterMean,gravity)"
48. "angle(tBodyAccelerateMeterJerkMean),gravityMean)"
49. "angle(tBodyGyroMean,gravityMean)"
50. "angle(tBodyGyroJerkMean,gravityMean)"
51. "angle(X,gravityMean)"
52. "angle(Y,gravityMean)"
53. "angle(Z,gravityMean)"
54. "timeBodyAccelerateMeter-std()-X"
55. "timeBodyAccelerateMeter-std()-Y"
56. "timeBodyAccelerateMeter-std()-Z"
57. "timeGravityAccelerateMeter-std()-X"
58. "timeGravityAccelerateMeter-std()-Y"
59. "timeGravityAccelerateMeter-std()-Z"
60. "timeBodyAccelerateMeterJerk-std()-X"
61. "timeBodyAccelerateMeterJerk-std()-Y"
62. "timeBodyAccelerateMeterJerk-std()-Z"
63. "timeBodyGyro-std()-X"
64. "timeBodyGyro-std()-Y"
65. "timeBodyGyro-std()-Z"
66. "timeBodyGyroJerk-std()-X"
67. "timeBodyGyroJerk-std()-Y"
68. "timeBodyGyroJerk-std()-Z"
69. "timeBodyAccelerateMeterMagnitude-std()"
70. "timeGravityAccelerateMeterMagnitude-std()"
71. "timeBodyAccelerateMeterJerkMagnitude-std()"
72. "timeBodyGyroMagnitude-std()"
73. "timeBodyGyroJerkMagnitude-std()"
74. "frequencyBodyAccelerateMeter-std()-X"
75. "frequencyBodyAccelerateMeter-std()-Y"
76. "frequencyBodyAccelerateMeter-std()-Z"
77. "frequencyBodyAccelerateMeterJerk-std()-X"
78. "frequencyBodyAccelerateMeterJerk-std()-Y"
79. "frequencyBodyAccelerateMeterJerk-std()-Z"
80. "frequencyBodyGyro-std()-X"
81. "frequencyBodyGyro-std()-Y"
82. "frequencyBodyGyro-std()-Z"
83. "frequencyBodyAccelerateMeterMagnitude-std()"
84. "frequencyBodyAccelerateMeterJerkMagnitude-std()"
85. "frequencyBodyGyroMagnitude-std()"
86. "frequencyBodyGyroJerkMagnitude-std()"


## Data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


tbodyacc-xyz

tgravityacc-xyz

tbodyaccjerk-xyz

tbodygyro-xyz

tbodygyrojerk-xyz

tbodyaccmag

tgravityaccmag

tbodyaccjerkmag

tbodygyromag

tbodygyrojerkmag

fbodyacc-xyz

fbodyaccjerk-xyz

fbodygyro-xyz

fbodyaccmag

fbodyaccjerkmag

fbodygyromag

fbodygyrojerkmag

The set of variables that were estimated from these signals are: 

mean: Mean value

std: Standard deviation

## Transformation

All the values are means, aggregated over 30 subjects and 6 activities, hence the resulting dataset is 180 rows by 68 columns.
