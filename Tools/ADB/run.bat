@ECHO OFF
SET ADB_EXE="%~dp0\adb.exe"
%ADB_EXE% logcat -v time -d