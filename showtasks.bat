call runcrud.bat
if "%ERRORLEVEL%" == "0" goto getTasksChrome
echo.
echo compilation error
goto fail

:getTasksChrome
start chrome http://localhost:8080/crud/v1/task/getTasks
goto end

:fail
echo.
echo There were errors

:end
echo.
echo Work is finished