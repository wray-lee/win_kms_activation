slmgr /upk
::show system information
slmgr /dlv
::
set /p _key_=supply your activation key according to the winver showed previously
slmgr /ipk "%_key_%"
set /p var=change customized kms server or not(y/n).
if /I "%var%"=="y" goto kms_server
if /I "%var%"=="n" goto no_kms

:kms_server
set /p _server_=supply your kms server
goto A1

:no_kms
set _server_=kms.03k.org
goto A1

:A1
slmgr /skms %_server_%
slmgr /ato
slmgr /dlv