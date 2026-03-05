@echo off
SET ROOT=%~dp0
"%ROOT%\apache\bin\httpd.exe" -k stop
"%ROOT%\mysql\bin\mysqladmin.exe" -u root shutdown
echo Stopped local WAMP.
