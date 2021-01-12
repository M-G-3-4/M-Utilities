cls
cmdmenusel 0170 "Adicionar" "Remover" "Voltar"
if %errorlevel% == 1 (
	start own_add.reg
)
if %errorlevel% == 2 (
	start own_remove.reg
)
if %errorlevel% == 3 (
	call M_Utilities.bat
)