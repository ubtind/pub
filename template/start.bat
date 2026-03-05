@echo off
SET ROOT=%~dp0
start "" "%ROOT%\mysql\bin\mysqld.exe" --defaults-file="%ROOT%\mysql\my.ini"
timeout /t 6 /nobreak >nul
start "" "%ROOT%\apache\bin\httpd.exe" -f "%ROOT%\apache\conf\httpd.conf"
echo Started local WAMP.
