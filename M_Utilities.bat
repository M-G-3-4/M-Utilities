@echo off
chcp 65001 >nul
:Home
cls
echo ------M Utilities------
cmdmenusel 0170 "Gerador de senha" "Open with Notepad" "Instalar programa via ZipInstaller" "Gerador de numero" "Instalar navegador basico" "Abrir navegador basico" "Instalar Take Command" "Instalar Winaero Tweaker"
:IFs dos menus
if %errorlevel% == 1 (
	cls
	echo A senha gerada é: %random%%random%%random%
	pause >nul
	goto Home && cls
)
if %errorlevel% == 2 (
	call own.bat
	goto Home && cls
)
if %errorlevel% == 3 (
	start ZipInstaller.exe
	goto Home && cls
)
if %errorlevel% == 4 (
	cls
	echo O número gerado é: %random%
	pause >nul
	goto Home && cls
)
if %errorlevel% == 5 (
	start Files\NavegadorBasico\Setup.Exe
	goto Home && cls
)
if %errorlevel% == 6 (
	start Files\NavegadorBasico\BasicBrowser.exe
	goto Home && cls
)
if %errorlevel% == 7 (
	Files\tcmd.exe /quiet
	call tcmd_install.bat
	goto Home
)
if %errorlevel% == 8 (
	start Files\WinaeroTweaker\SilentSetup.cmd
	call tcmd_install.bat
	goto Home
)
