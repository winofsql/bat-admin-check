@echo off

:check1
for /f "tokens=1 delims=," %%i in ('whoami /groups /FO CSV /NH') do (
	if "%%~i"=="BUILTIN\Administrators" goto :check2
)

echo �Ǘ��҃O���[�v�ł͂���܂���
goto :end

:check2
for /f "tokens=1 delims=," %%i in ('whoami /groups /FO CSV /NH') do (
	if "%%~i"=="Mandatory Label\High Mandatory Level" goto :admin
)
echo �Ǘ��Ҍ����Ŏ��s���Ă�������
goto :end

:admin

echo �Ǘ��Ҍ����Ŏ��s���Ă��܂�

:end

