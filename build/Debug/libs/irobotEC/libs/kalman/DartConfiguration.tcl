# This file is configured by CMake automatically as DartConfiguration.tcl
# If you choose not to use CMake, this file may be hand configured, by
# filling in the required variables.


# Configuration directories and files
SourceDirectory: D:/rm/code/ekf_imu/libs/irobotEC/libs/kalman
BuildDirectory: D:/rm/code/ekf_imu/build/Debug/libs/irobotEC/libs/kalman

# Where to place the cost data store
CostDataFile: 

# Site is something like machine.domain, i.e. pragmatic.crd
Site: SF4

# Build name is osname-revision-compiler, i.e. Linux-2.4.2-2smp-c++
BuildName: Generic-ninja.exe

# Subprojects
LabelsForSubprojects: 

# Submission information
SubmitURL: http://
SubmitInactivityTimeout: 

# Dashboard start time
NightlyStartTime: 00:00:00 EDT

# Commands for the build/test/submit cycle
ConfigureCommand: "D:/Tools/Cmake/cmake-3.30.3-windows-x86_64/cmake-3.30.3-windows-x86_64/bin/cmake.exe" "D:/rm/code/ekf_imu/libs/irobotEC/libs/kalman"
MakeCommand: D:\Tools\Cmake\cmake-3.30.3-windows-x86_64\cmake-3.30.3-windows-x86_64\bin\cmake.exe --build . --config "${CTEST_CONFIGURATION_TYPE}"
DefaultCTestConfigurationType: Release

# version control
UpdateVersionOnly: 

# CVS options
# Default is "-d -P -A"
CVSCommand: 
CVSUpdateOptions: 

# Subversion options
SVNCommand: 
SVNOptions: 
SVNUpdateOptions: 

# Git options
GITCommand: D:/Tools/Git/cmd/git.exe
GITInitSubmodules: 
GITUpdateOptions: 
GITUpdateCustom: 

# Perforce options
P4Command: 
P4Client: 
P4Options: 
P4UpdateOptions: 
P4UpdateCustom: 

# Generic update command
UpdateCommand: D:/Tools/Git/cmd/git.exe
UpdateOptions: 
UpdateType: git

# Compiler info
Compiler: D:/Tools/Arm GNU Toolchain arm-none-eabi/13.3 rel1/bin/arm-none-eabi-g++.exe
CompilerVersion: 13.3.1

# Dynamic analysis (MemCheck)
PurifyCommand: 
ValgrindCommand: 
ValgrindCommandOptions: 
DrMemoryCommand: 
DrMemoryCommandOptions: 
CudaSanitizerCommand: 
CudaSanitizerCommandOptions: 
MemoryCheckType: 
MemoryCheckSanitizerOptions: 
MemoryCheckCommand: MEMORYCHECK_COMMAND-NOTFOUND
MemoryCheckCommandOptions: 
MemoryCheckSuppressionFile: 

# Coverage
CoverageCommand: D:/Tools/MinGW/bin/gcov.exe
CoverageExtraFlags: -l

# Testing options
# TimeOut is the amount of time in seconds to wait for processes
# to complete during testing.  After TimeOut seconds, the
# process will be summarily terminated.
# Currently set to 25 minutes
TimeOut: 1500

# During parallel testing CTest will not start a new test if doing
# so would cause the system load to exceed this value.
TestLoad: 

TLSVerify: 
TLSVersion: 

UseLaunchers: 
CurlOptions: 
# warning, if you add new options here that have to do with submit,
# you have to update cmCTestSubmitCommand.cxx

# For CTest submissions that timeout, these options
# specify behavior for retrying the submission
CTestSubmitRetryDelay: 5
CTestSubmitRetryCount: 3
