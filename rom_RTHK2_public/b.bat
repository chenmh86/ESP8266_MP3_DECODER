

cls
@echo off

@echo.
@echo USAGE: b com#
@echo example: b com8, to burn rom image to flash
@echo ensure your ESP module is in bootload mode, how to do that:
@echo hold RESET button, hold FLASH button, release RESET button, release FLASH button, done.

@echo.
if [%1]==[] goto no_com

esptool.exe -vv -cp com%1 -cc esp8266% -ca 0x00000 -cf 0x00000.bin -ca 0x0a0000 -cf 0xA0000.bin 
goto eof

:no_com
@echo nothing is done!!!!!!
@echo need to specify com#, try again.

:eof
rem exit /B 1