# EKF
The file EKF.slx contains the simulink scheme to run for simulating a navigation scenario (short range and short term) with an Extended Kalman Fitler for sensor fusion. 
It needs 4 variables inside the workspace to run:
- no_switchoff: can be set to 1
- imu: data from an IMU
- state: position and velocity ground truth data (used in order to simulate two auxiliary sensors (UWB and 3D Laser Scanner)
- q: ground truth quaternion parametrization for attitude

Otherwise, if only the Filter is needed, the block implementing it is the block "Real_Mech" inside the subsystem "Scale_Factor1". The filter provides real time estimates for position, velocity, Accelerometer and Gyroscope bias and scale factor (but not misalignment) and gravity (both module and direction).
In order to run it needs to be provided with acceleration and angular rate from the IMU and Z, H, R that are:
- Z: auxiliary sensors measure (position and attitude)
- H: observation matrix (7x25)
- R: covariance matrix for the noise (if it is supposed to be white noise) from the auxiliary sensors (7x7)

It can be made multirate by providing H completely/partially filled with zeros and the identity matrix (or only part of it) as R when no data is provided or only part of it is available.
