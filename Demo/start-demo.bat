start cmd /c fluentd-node1.bat
start cmd /c fluentd-node2.bat
start cmd /c log-generator1.bat
start cmd /c log-generator2.bat

timeout /t 1200

call cleanupDemo.bat

echo off
rem start Powershell.exe /c cleanupDemo.bat
rem taskkill /F /T /IM cmd.exe
