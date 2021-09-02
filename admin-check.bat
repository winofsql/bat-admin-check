@echo off

:check1
for /f "tokens=1 delims=," %%i in ('whoami /groups /FO CSV /NH') do (
	if "%%~i"=="BUILTIN\Administrators" goto :check2
)

echo 管理者グループではありません
goto :end

:check2
for /f "tokens=1 delims=," %%i in ('whoami /groups /FO CSV /NH') do (
	if "%%~i"=="Mandatory Label\High Mandatory Level" goto :admin
)
echo 管理者権限で実行してください
goto :end

:admin

echo 管理者権限で実行しています

:end

