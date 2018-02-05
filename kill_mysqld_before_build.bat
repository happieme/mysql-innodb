@echo off
title "kill msyqld.exe before build"
tasklist | find /i "mysqld.exe"
:: echo %errorlevel%
if %errorlevel% == 0 (taskkill /F /im "mysqld.exe")
:: pause