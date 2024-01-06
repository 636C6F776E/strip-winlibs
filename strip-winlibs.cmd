@ECHO OFF
SETLOCAL
:PROMPT
ECHO WinLibs Strip Script for versions 7.5.0 to 13.2.0
ECHO ===================================================
ECHO This will strip all except the Compiler, Debugger, Binutils and Make.
SET /P AREYOUSURE="Are you sure? Y/[N]: "
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

REM ccache
DEL /F bin\ccache.exe

REM CMake
RMDIR /S /Q share\cmake-3.26
RMDIR /S /Q share\cmake-3.27
RMDIR /S /Q share\cmake-3.28
DEL /F bin\cmake.exe
DEL /F bin\cmcldeps.exe
DEL /F bin\cpack.exe
DEL /F bin\ctest.exe

REM dos2unix
DEL /F bin\dos2unix.exe
DEL /F bin\mac2unix.exe
DEL /F bin\unix2dos.exe
DEL /F bin\unix2mac.exe

REM Doxygen
DEL /F bin\doxygen.exe

REM JWasm
DEL /F bin\jwasm.exe

REM NASM
DEL /F nasm.exe
DEL /F ndisasm.exe
DEL /F bin\nasm.exe
DEL /F bin\ndisasm.exe

REM ninja
DEL /F bin\ninja.exe

REM PExports
DEL /F bin\pexports.exe

REM Yasm
DEL /F vsyasm.exe
DEL /F yasm.exe
DEL /F ytasm.exe
DEL /F bin\vsyasm.exe
DEL /F bin\yasm.exe
DEL /F bin\ytasm.exe
RMDIR /S /Q include\libyasm
DEL /F include\libyasm.h
DEL /F include\libyasm-stdint.h
DEL /F lib\libyasm.a

:END
PAUSE
ENDLOCAL
