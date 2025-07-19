@echo off
title Simple & Reliable PC Cleaner by Aaditya Kumar Sah
color 0a

:: ===================================================================
::  IMPORTANT: HOW TO RUN THIS SCRIPT
:: ===================================================================
::
::  To make this script work, you MUST run it as an Administrator.
::
::  1) Save and close this file.
::  2) Find the file on your computer.
::  3) RIGHT-CLICK on the file.
::  4) Select "Run as administrator" from the menu.
::
:: ===================================================================

cls
echo.
echo  ============================================
echo      Developer !!!!
echo      Aaditya Kumar Sah
echo  ============================================
echo.
echo  This script will now clean the most common temporary
echo  files and caches from your PC.
echo.
pause
echo.

echo --- [1/6] Cleaning User Temporary Files ---
del /q /f /s %temp%\*
echo     Done.
echo.

echo --- [2/6] Cleaning Windows System Temporary Files ---
del /q /f /s C:\Windows\Temp\*
echo     Done.
echo.

echo --- [3/6] Cleaning Prefetch Files ---
del /q /f /s C:\Windows\Prefetch\*
echo     Done.
echo.

echo --- [4/6] Cleaning Windows Update Cache ---
net stop wuauserv >nul 2>&1
del /q /f /s C:\Windows\SoftwareDistribution\Download\* >nul 2>&1
net start wuauserv >nul 2>&1
echo     Done.
echo.

echo --- [5/6] Flushing DNS Cache ---
ipconfig /flushdns
echo     Done.
echo.

echo --- [6/6] Running Windows Disk Cleanup ---
echo     Note: You can configure this with 'cleanmgr /sageset:1'
cleanmgr /sagerun:1
echo     Done.
echo.

echo  ============================================
echo   CLEANUP COMPLETE!
echo  ============================================
echo.
echo  The essential cleaning tasks are finished.
echo  You can close this window now.
echo.
pause