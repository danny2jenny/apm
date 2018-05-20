@echo off

if "%1" EQU "" goto :help
if "%2" EQU "" goto :help

avrdude -Cavrdude.conf -patmega328p -carduino -P\\.\%1 -b115200 -D -V -Uflash:w:%2:i
goto :end

:help
echo Usage: upload.bat COM6  firmware.hex
echo		COM6 - Serial port where device is connected, check it in Cotrol Panel
echo		firmware.hex - binary firmware file

:end