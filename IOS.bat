@ECHO OFF

SET "year=%date:~0,4%"
SET "month=%date:~5,2%"
SET "day=%date:~8,2%"
SET "hour_ten=%time:~0,1%"
SET "hour_one=%time:~1,1%"
SET "minute=%time:~3,2%"
SET "second=%time:~6,2%"

SET RUNNER="%~dp0\Tools\iOSLogInfo\run.bat"
SET MTEE_EXE="%~dp0\Tools\mtee.exe"

CALL %RUNNER% | %MTEE_EXE% "IOS_%year%%month%%day%%hour_ten%%hour_one%%minute%%second%.log"