@echo off

:: Enable necessary extensions
@setlocal enableextensions

echo ::: UPDATE SUBMODULES BEGIN ::::

echo Get the current directory
set "currentDir=%CD%"

echo Change the current working directory to the script directory
@cd /d "%~dp0"

del desktop.ini /A:H /S

rem for /r %%i in (desktop.ini) do (
rem     git rm --cached --force "%%i"
rem )

git submodule update --remote --merge

echo ::: UPDATE SUBMODULES COMPLETED ::::
pause