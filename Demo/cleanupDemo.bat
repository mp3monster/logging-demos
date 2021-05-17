echo off
call setLocations.bat
cd %demo%\Demo

echo cleaning up now

rem del annotated-file-*.txt
del *.pos_file
del *.log
del basic-file*.txt

rem rmdir /q fluentd-file-output  
rem rmdir /s /q label-pipeline-file-output  
rem rmdir /s /q nonlabel-file-output   

cd %demo%
