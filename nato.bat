@echo off
setlocal EnableExtensions EnableDelayedExpansion

set "NATO_A=Alfa"
set "NATO_B=Bravo"
set "NATO_C=Charlie"
set "NATO_D=Delta"
set "NATO_E=Echo"
set "NATO_F=Foxtrot"
set "NATO_G=Golf"
set "NATO_H=Hotel"
set "NATO_I=India"
set "NATO_J=Juliett"
set "NATO_K=Kilo"
set "NATO_L=Lima"
set "NATO_M=Mike"
set "NATO_N=November"
set "NATO_O=Oscar"
set "NATO_P=Papa"
set "NATO_Q=Quebec"
set "NATO_R=Romeo"
set "NATO_S=Sierra"
set "NATO_T=Tango"
set "NATO_U=Uniform"
set "NATO_V=Victor"
set "NATO_W=Whiskey"
set "NATO_X=X-ray"
set "NATO_Y=Yankee"
set "NATO_Z=Zulu"

if "%~1"=="" goto reference

set "output="

:arg_loop
if "%~1"=="" goto done

set "text=%~1"
set /a i=0

:char_loop
set "ch=!text:~%i%,1!"
if "!ch!"=="" goto next_arg

for %%L in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
  if /I "!ch!"=="%%L" (
    if defined output (
      set "output=!output! !NATO_%%L!"
    ) else (
      set "output=!NATO_%%L!"
    )
  )
)

set /a i+=1
goto char_loop

:next_arg
shift
goto arg_loop

:done
echo(!output!
exit /b 0

:reference
echo A  Alfa       N  November
echo B  Bravo      O  Oscar
echo C  Charlie    P  Papa
echo D  Delta      Q  Quebec
echo E  Echo       R  Romeo
echo F  Foxtrot    S  Sierra
echo G  Golf       T  Tango
echo H  Hotel      U  Uniform
echo I  India      V  Victor
echo J  Juliett    W  Whiskey
echo K  Kilo       X  X-ray
echo L  Lima       Y  Yankee
echo M  Mike       Z  Zulu
exit /b 0
