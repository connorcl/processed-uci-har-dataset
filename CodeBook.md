# Processed UCI Human Activity Recognition Using Smartphones Dataset

## Study design

Details of the study design are found in the README of the original dataset:

>The experiments have been carried out with a group of 30 volunteers within an 
age bracket of 19-48 years. Each person performed six activities 
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded 
accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial 
angular velocity at a constant rate of 50Hz. The experiments have been 
video-recorded to label the data manually. The obtained dataset has been 
randomly partitioned into two sets, where 70% of the volunteers was selected 
for generating the training data and 30% the test data.  
>
>The sensor signals (accelerometer and gyroscope) were pre-processed by applying 
noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 
50% overlap (128 readings/window). The sensor acceleration signal, which has 
gravitational and body motion components, was separated using a Butterworth 
low-pass filter into body acceleration and gravity. The gravitational force is 
assumed to have only low frequency components, therefore a filter with 0.3 Hz 
cutoff frequency was used. From each window, a vector of features was obtained 
by calculating variables from the time and frequency domain.

## Codebook

### Identifiers
  
* **subject**: unique participant id, an integer
* **activity**: kind of physical activity performed, a factor with
6 levels: "walking", "walking upstairs", "walking downstairs", "sitting", 
"standing", "laying"  
 
### Measurements

According to the original dataset documentation, the following features come 
from the raw 3-axial accelerometer and gyroscope time-domain signals, captured 
at a rate of 50Hz and filtered using a median filter and a 3rd order low pass 
Butterworth filter with a corner frequency of 20 Hz to remove noise. The 
acceleration signal was separated into body and gravity acceleration signals 
using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Additionally, The body linear acceleration and angular velocity were derived in 
time to obtain jerk signals, and the magnitude of these three-dimensional 
signals were calculated using the Euclidean norm. Finally, frequency domain 
signals were calculated using a Fast Fourier Transform (FFT).  
  
All of these variables are floating point numbers, normalized and bounded within 
[-1,1].  

Each variable as recorded in `tidy_data.txt` is the mean of this variable across 
all the observations for each unique subject-activity combination.  
  
* **time.body.acc.mean.x**, **time.body.acc.mean.y**, **time.body.acc.mean.z**: 
for each axis, the mean body accleration signal (time domain).

* **time.body.acc.std.x**, **time.body.acc.std.y**, **time.body.acc.std.z**: 
for each axis, the standard deviation of the body accleration signal 
(time domain).

* **time.gravity.acc.mean.x**, **time.gravity.acc.mean.y**, 
**time.gravity.acc.mean.z**: for each axis, the mean gravity accleration signal 
(time domain).

* **time.gravity.acc.std.x**, **time.gravity.acc.std.y**, 
**time.gravity.acc.std.z**: for each axis, the standard deviation of the gravity 
accleration signal (time domain).

* **time.body.acc.jerk.mean.x**, **time.body.acc.jerk.mean.y**, 
**time.body.acc.jerk.mean.z**: for each axis, the mean body accleration jerk 
signal (time domain).

* **time.body.acc.jerk.std.x**, **time.body.acc.jerk.std.y**, 
**time.body.acc.jerk.std.z**: for each axis, the standard deviation of the body 
accleration jerk signal (time domain).

* **time.gravity.acc.jerk.mean.x**, **time.gravity.acc.jerk.mean.y**, 
**time.gravity.acc.jerk.mean.z**: for each axis, the mean gravity accleration 
jerk signal (time domain).

* **time.gravity.acc.jerk.std.x**, **time.gravity.acc.jerk.std.y**, 
**time.gravity.acc.jerk.std.z**: for each axis, the standard deviation of the 
gravity accleration jerk signal (time domain).

* **time.body.gyro.mean.x**, **time.body.gryo.mean.y**, 
**time.body.gyro.mean.z**: for each axis, the mean body angular velocity signal 
(time domain).

* **time.body.gyro.std.x**, **time.body.gyro.std.y**, **time.body.gyro.std.z**: 
for each axis, the standard deviation of the body angular velocity signal 
(time domain).

* **time.body.gyro.jerk.mean.x**, **time.body.gyro.jerk.mean.y**, 
**time.body.gyro.jerk.mean.z**: for each axis, the mean body angular velocity 
jerk signal (time domain).

* **time.body.gyro.jerk.std.x**, **time.body.gyro.jerk.std.y**, 
**time.body.gyro.jerk.std.z**: for each axis, the standard deviation of the body 
angular velocity jerk signal (time domain).

* **time.body.acc.mag.mean**: the mean magnitude of the body acceleration signal 
(time domain).

* **time.body.acc.mag.std**: the standard deviation of the magnitude of the body 
acceleration signal (time domain).

* **time.gravity.acc.mag.mean**: the mean magnitude of the gravity acceleration 
signal (time domain).

* **time.gravity.acc.mag.std**: the standard deviation of the magnitude of the 
gravity acceleration signal (time domain).

* **time.body.acc.jerk.mag.mean**: the mean magnitude of the body acceleration 
jerk signal (time domain).

* **time.body.acc.jerk.mag.std**: the standard deviation of the magnitude of the 
body acceleration jerk signal (time domain).

* **time.body.gyro.mag.mean**: the mean magnitude of the body angular velocity 
signal (time domain).

* **time.body.gyro.mag.std**: the standard deviation of the magnitude of the 
body angular velocity signal (time domain).

* **time.body.gyro.jerk.mag.mean**: the mean magnitude of the body angular 
velocity jerk signal (time domain).

* **time.body.gyro.jerk.mag.std**: the standard deviation of the magnitude of 
the body angular velocity jerk signal (time domain).

* **freq.body.acc.mean.x**, **freq.body.acc.mean.y**, **freq.body.acc.mean.z**: 
for each axis, the mean body accleration signal (frequency domain).

* **freq.body.acc.std.x**, **freq.body.acc.std.y**, **freq.body.acc.std.z**: 
for each axis, the standard deviation of the body accleration signal 
(frequency domain).

* **freq.body.acc.jerk.mean.x**, **freq.body.acc.jerk.mean.y**, 
**freq.body.acc.jerk.mean.z**: for each axis, the mean body accleration jerk 
signal (frequency domain).

* **freq.body.acc.jerk.std.x**, **freq.body.acc.jerk.std.y**, 
**freq.body.acc.jerk.std.z**: for each axis, the standard deviation of the body 
accleration jerk signal (frequency domain).

* **freq.body.gyro.mean.x**, **freq.body.gryo.mean.y**, 
**freq.body.gyro.mean.z**: for each axis, the mean body angular velocity signal 
(frequency domain).

* **freq.body.gyro.std.x**, **freq.body.gyro.std.y**, **freq.body.gyro.std.z**:
for each axis, the standard deviation of the body angular velocity signal 
(frequency domain).

* **freq.body.acc.mag.mean**: the mean magnitude of the body acceleration signal 
(frequency domain).

* **freq.body.acc.mag.std**: the standard deviation of the magnitude of the body 
acceleration signal (frequency domain).

* **freq.body.acc.jerk.mag.mean**: the mean magnitude of the body acceleration 
jerk signal (frequency domain).

* **freq.body.acc.jerk.mag.std**: the standard deviation of the magnitude of the 
body acceleration jerk signal (frequency domain).

* **freq.body.gyro.mag.mean**: the mean magnitude of the body angular velocity 
signal (frequency domain).

* **freq.body.gyro.mag.std**: the standard deviation of the magnitude of the 
body angular velocity signal (frequency domain).

* **freq.body.gyro.jerk.mag.mean**: the mean magnitude of the body angular 
velocity jerk signal (frequency domain).

* **freq.body.gyro.jerk.mag.std**: the standard deviation of the magnitude of 
the body angular velocity jerk signal (frequency domain).
