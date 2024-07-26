@echo off
title ox item creator - rsb.system

:Welcome
cls
chcp 65001 > nul
echo ██████╗░░██████╗██████╗░░░░░██████╗██╗░░░██╗░██████╗████████╗███████╗███╗░░░███╗░██████╗
echo ██╔══██╗██╔════╝██╔══██╗░░░██╔════╝╚██╗░██╔╝██╔════╝╚══██╔══╝██╔════╝████╗░████║██╔════╝
echo ██████╔╝╚█████╗░██████╦╝░░░╚█████╗░░╚████╔╝░╚█████╗░░░░██║░░░█████╗░░██╔████╔██║╚█████╗░
echo ██╔══██╗░╚═══██╗██╔══██╗░░░░╚═══██╗░░╚██╔╝░░░╚═══██╗░░░██║░░░██╔══╝░░██║╚██╔╝██║░╚═══██╗
echo ██║░░██║██████╔╝██████╦╝██╗██████╔╝░░░██║░░░██████╔╝░░░██║░░░███████╗██║░╚═╝░██║██████╔╝
echo ╚═╝░░╚═╝╚═════╝░╚═════╝░╚═╝╚═════╝░░░░╚═╝░░░╚═════╝░░░░╚═╝░░░╚══════╝╚═╝░░░░░╚═╝╚═════╝░
echo ox item creator (v.1.0)
pause

:createItem
cls
set /p item_name="Item Name : " 
set /p item_label="Item Label : "  
set /p item_descript="Item Beschreibung : " 
set /p item_weight="Item Gewicht : " 

(
    echo ['%item_name%'] = { label = '%item_label%', description = '%item_descript%', weight = '%item_weight%', stack = 'true', close = 'false' },
) >> items.txt

goto :saveItem

:saveItem
clip < "items.txt"
goto :Init

:Init
cls
set /p ABC_DEF=Weiteres Item erstellen oder beenden? (1/2):
if %ABC_DEF%==1 goto createItem
if %ABC_DEF%==2 goto Exit
pause

:Exit
echo Bye
pause
