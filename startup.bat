@ECHO OFF
title CLIENT - %USERNAME%
SET PYTHONPATH=%cd%\Resources;%cd%\Variables;%cd%\CustomPythonLibs;%cd%\PythonLibs;
SET PATH=%cd%\Webdriver;%cd%\TestData;%PATH%
set opt=%cd%\Results
set ROBOT_OPTIONS=--outputdir "%opt%"
cmd /k
