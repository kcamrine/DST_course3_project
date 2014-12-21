README for implementing run_analysis.R
=================
A description of the processing of data from the following study
-----------------

*(Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012)*

## files include:
README.md                    -- this file
Run_analysis.R               -- code to tidy the dataset into final product
Codebook.md                  -- description of data processing and variable names
run_analysis_output_tidy.txt -- tidy dataset



Raw data described below (from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#):

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

'The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. "


Data Processing: For our purposes, the test and training data were merged into one dataset (dataset dimensions:10299 x 561). Names of measurements were imported directly from the features.txt file in the UCI HAR Dataset directory. It is important to note this because some features have the same name. We do not manually correct for this in order to maintain full reproducibility.  Values associated with the basic standard deviation (variable name contains 'std()') or the basic mean (variable name contains 'mean()') of a specific type of measurement were retained (dataset dimensions:10299 x 66). Identifiers for the activity (dataset dimensions:10299 x 67), and each measurement (dataset dimensions:10299 x 68) were added to prepare for the next computation.  We calculated the average of the mean/standard deviation records for each measurement per activity per subject. This resulted in a dataset with 180 unique samples (30 subjects x 6 activities), and 68 columns of values (2 identification columns, subject and activity, and 66 averages)