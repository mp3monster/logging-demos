title Log Generator 2
call setLocations.bat
cd /D %demo%
groovy %logGenerator%\logSimulator.groovy SimulatorConfig\basic-log-file2.properties