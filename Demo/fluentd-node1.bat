title Fluentd Node 1
call book.bat
call setLocations.bat
cd /D %demo%

fluentd -c Fluentd\node1-file-source-multi-out-label-pipelines.conf