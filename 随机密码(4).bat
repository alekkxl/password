@echo off
color 8e
:12
call :ys 8d "========================================"  
echo.
call :ys 8a "#                                      #"  
echo.
call :ys 8b "#            Power by WZC              #"
echo.
call :ys 8c "#                                      #"  
echo.
call :ys 8d "========================================"  
echo. 
set ÍøÕ¾=
call :ys 8a "ÊÊÓÃÍøÖ·£º"
set /p ÍøÕ¾=
set Ãû×Ö=
call :ys 8b "ÕË»§Ãû³Æ£º"
set /p Ãû×Ö=
call :ys 8c "========================================"  
echo.
call :ys 8d "#            Power by WZC              #"
echo.
call :ys 8a "#            ÃÜÂëÀàĞÍ                  #"
echo.  
call :ys 8b "#            1- ´¿Êı×Ö                 #" 
echo.
call :ys 8c "#            2- Êı×ÖÓë´óĞ¡Ğ´×ÖÄ¸       #"  
echo.
call :ys 8d "#            3- Êı×ÖºÍÌØÊâ·ûºÅ         #" 
echo.
call :ys 8a "#            4- ×ÖÄ¸¼ÓÌØÊâ·ûºÅ         #"
echo.
call :ys 8b "#            5- Êı×Ö¼Ó×ÖÄ¸¼ÓÌØÊâ·ûºÅ   #"
echo.
call :ys 8c "#            6- ©–¦¯0oO                 #"
echo.
call :ys 8d "#            7- 1Il                    #"
echo.
call :ys 8a "#            8- VMWN                   #"   
echo.
call :ys 8b "#            9- VvWw                   #"   
echo.
call :ys 8c "#           10- I-IH                   #"   
echo.
call :ys 8d "========================================"  
echo. 
set choice=
call :ys 8a "ÃÜÂëÀàĞÍ1¡¢2¡¢3¡¢4¡¢5¡¢6¡¢7¡¢8¡¢9¡¢10£º" 
set /p choice=
goto %choice%
:1
set svar=0123456789
set wei=10
goto 11
:2 
set svar=MnUvVwCdYzlLmOpNEfFgGh7DWxXy012j89aAT6KrRsbk345StHiIouPqQZBceJ
set wei=62
goto 11
:3
set svar=074-*/\=^59:;!%13682+$,~`#
set wei=27
goto 11
:4
set svar=arRsStLmFjJpdDYzZTu!%bB*/\Oc+-KlQg$,~`#qHw=^WxMGhoUiIECXykeAnN:;vVfP
set wei=68
goto 11
:5
set svar=Di^bB-*/tTy$OSdmMn01pck3e~`#+PqQKEfFgu5H4,lLaNowR;XGh:W=x!%\IjJCZrAs26789YzUvV
set wei=79
goto 11
:6
set svar=©–¦¯0oO
set wei=5
goto 11
:7
set svar=1Il
set wei=3
goto 11
:8
set svar=VMWN
set wei=4
goto 11
:9
set svar=vwVW
set wei=4
goto 11
:10
set svar=I-lH
set wei=4
goto 11
:11
set weishu=
call :ys 8b "ÉèÖÃÃÜÂëÎ»Êı£º" 
set /p weishu=
setlocal enabledelayedexpansion
set "rvar="
set num=%weishu%
:loop
set /a num-=1
set /a rand=%random%%%%wei%
set "rvar=%rvar%!svar:~%rand%,1!"
if not %num%==0 goto loop
echo !rvar!
echo %date%%time%>>%~dp0ÃÜÂë.txt
echo ÍøÕ¾£º%ÍøÕ¾%>>%~dp0ÃÜÂë.txt
echo ÕËºÅ£º%Ãû×Ö%£»%weishu%×Ö½ÚÃÜÂë£º%rvar%>>%~dp0ÃÜÂë.txt
echo. >> %~dp0ÃÜÂë.txt
set tui=
call :ys 8c "°´y¼ü¼ÌĞø°´ÆäËû¼üÍË³ö"
set /p tui=
if "%tui%"=="y" (goto 12) else (exit) 
exit

:ys
pushd "%temp%"
>"%~2",set/p= <nul
findstr /a:%~1 .* "%~2*"
del "%~2"
popd