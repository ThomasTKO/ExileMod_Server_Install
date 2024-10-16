@echo off
@rem http://media.steampowered.com/installer/steamcmd.zip  /
SETLOCAL ENABLEDELAYEDEXPANSION
       :: DEFINE the following variables where applicable to your install
    SET STEAMLOGIN=name pass 
    SET A3serverBRANCH=233780
        :: For stable use 233780  for cdlc server update use 233780  creatordlc !!
        :: For cdlc server update use 233780  creatordlc 
        :: For Dev use 233780 -beta development
                :: Note, the missing qotation marks, these need to be wrapped around the entire "+app_data......"
                :: There is no DEV branch data yet for Arma 3 Dedicated Server package !!!
    SET A3serverPath=C:\Exile
        SET STEAMPATH=C:\steam\
:: _________________________________________________________
echo.
echo     You are about to update ArmA 3 server
echo        Dir: %A3serverPath%
echo        Branch: %A3serverBRANCH%
echo.
echo     Key "ENTER" to proceed
pause
%STEAMPATH%\steamcmd.exe +login %STEAMLOGIN% +force_install_dir %A3serverPath% +"app_update %A3serverBRANCH%" validate +quit
echo .
echo     Your ArmA 3 server is now up to date
echo     key "ENTER" to exit
pause
:://///////////neu von Epoch
::@ECHO OFF
::SET STEAMUN=admin@youremail.net
::SET STEAMPW=chamgeme
::SET ARMASVRPATH=C:\Arma3Server

::::(Full client\server package)
::SET ARMAAPPID=107410

::::(Dedicated server package)
::::SET ARMAAPPID=233780

::::(Development version)
::::SET ARMAAPPID=107410 -beta development

:::: more info https://community.bistudio.com/wiki/Arma_3_Dedicated_Server

:::: steamcmd.exe +login %STEAMUN% %STEAMPW% +force_install_dir "%ARMASVRPATH%" "+app_update %ARMAAPPID% validate" +quit
::steamcmd.exe +login %STEAMUN% %STEAMPW% +force_install_dir "%ARMASVRPATH%" "+app_update %ARMAAPPID%" +quit
