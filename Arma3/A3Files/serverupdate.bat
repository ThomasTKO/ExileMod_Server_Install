@echo off
@rem http://media.steampowered.com/installer/steamcmd.zip  
SETLOCAL ENABLEDELAYEDEXPANSION

	:: DEFINE the following variables where applicable to your install

	SET STEAMLOGIN=username password
	SET A3serverBRANCH=233780
		:: For stable use 233780
		:: For Dev use 233780 -beta development  creatordlc
				:: Note, the missing qoutation marks, these need to be wrapped around the entire "+app_data......"
				:: There is no DEV branch data yet for Arma 3 Dedicated Server package !!!

    SET A3serverPath=C:\Server\Exile
        SET STEAMPATH=C:\steam\

:: 

echo.
echo     You are about to update Arma 3 server
echo        Dir: %A3serverPath%
echo        Branch: %A3serverBRANCH%
echo.
echo     Key "ENTER" to proceed
pause
%STEAMPATH%\steamcmd.exe +force_install_dir %A3serverPath% +login %STEAMLOGIN% +"app_update %A3serverBRANCH%" validate +quit
echo .
echo     Your Arma 3 server is now up to date
echo     key "ENTER" to exit
pause
