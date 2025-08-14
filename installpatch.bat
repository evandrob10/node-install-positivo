@echo off
setlocal

set "NODE_PATH=C:\nodejs"

echo Adicionando %NODE_PATH% ao PATH do usuário...

:: Adiciona ao PATH do usuário (sem sobrescrever o restante)
for /f "tokens=2*" %%a in ('reg query "HKCU\Environment" /v PATH 2^>nul') do set "OLD_PATH=%%b"
set "NEW_PATH=%NODE_PATH%;%OLD_PATH%"
setx PATH "%NEW_PATH%" > nul

echo.
echo ✅ Caminho %NODE_PATH% adicionado ao PATH do usuário.
echo 🔁 Reinicie o terminal (cmd ou PowerShell) para aplicar.
pause
endlocal
