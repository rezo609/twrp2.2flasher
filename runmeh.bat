::WFSdev Team
::TWRP Recovery Flaher
@title WFSdev Unofficial TWRP Recovery Flasher, Copyright (c) 2012
echo off
cls
color 9
echo. ==============================================================================
echo. 								
echo. 	TWRP 2.2 Recovery Flasher for Marvel and MarvelC	
echo. 								
echo. 		  WFSdev Team - Created by rezo609	
echo. 								
echo. 	 You must have USB Debugging on for this too work	
echo. 								
echo ===============================================================================
pause
cls
echo. Before you use this tool, please give benjamingwynn a thank for this recovery. Thanks!
pause
start "C:\Program Files\Internet Explorer" explorer.exe explorer.exe
start http://forum.xda-developers.com/showthread.php?t=1799597
cls
echo ===============================================================================
echo.
echo. Copyright (c) 2012 - WFSdev Team
echo.
echo.
echo. PLEASE SPECIFY YOUR DEVICE'S MODEL BELOW
echo.
echo.
echo ===============================================================================
echo.
echo.
echo.
:menuLOOP
	::Load up our menu selections
	for /f "tokens=1,2,* delims=_ " %%A in ('"findstr /b /c:":menu_" "%~f0""') do echo.  %%B  %%C
	

	set choice=
	echo.&set /p choice=Please enter an option: ||GOTO:EOF
	echo.&call:menu_%choice%
GOTO:menuLOOP

:menu_1     TWRP 2.2 for MARVEL
	adb wait-for-device
	adb push wfsdevlogo.png /sdcard/wfsdevlogo.png
	adb reboot-bootloader
	fastboot flash recovery marvel-twrp.img
	fastboot reboot
	adb wait-for-device
	adb reboot recovery
	echo "TWRP 2.2 for MARVEL has been sucessfully flashed."
	pause
	cls

GOTO:EOF

:menu_2     TWRP 2.2 for MARVELC
	adb wait-for-device
	adb push wfsdevlogo.png /sdcard/wfsdevlogo.png
	adb reboot-bootloader
	fastboot flash recovery marvelc-twrp.img
	fastboot reboot
	adb wait-for-device
	adb reboot recovery
	echo "TWRP 2.2 for MARVELC has been sucessfully flashed."
	pause
	cls

GOTO:EOF

:menu_3     About/Changelog
	echo "Changelog: Initial Release"
	echo.
	echo "About: A simple recovery flasher for TWRP 2.2 for the Wildfire S 
	echo by the WFSdev Team"
	pause
	cls

GOTO:EOF