@echo off
chcp 65001
echo "start install all"
echo "安裝新公文系統"
start/wait C:/source/112.05軟體/1.要安裝/1.新公文系統元件/Eic_Notify.msi /passive
start/wait C:/source/112.05軟體/1.要安裝/1.新公文系統元件/EicPrint.msi /passive
start/wait C:/source/112.05軟體/1.要安裝/1.新公文系統元件/EICSignTSR.msi /passive
echo  ok
echo "install HiCOS"
start/wait C:/source/112.05軟體/1.要安裝/2.HiCOS_Client_V3.1.0.22133/HiCOS_Client.exe /s
echo  ok
echo "install 中推會"
"C:\source\112.05軟體\1.要安裝\3.中推會\01 vcredist_x86.exe" /passive
"C:/source/112.05軟體/1.要安裝/3.中推會/02 CMEX-refresh_eudc-Setup-20190307.exe" /SILENT
"C:/source/112.05軟體/1.要安裝/3.中推會/03 CMEXIME-Setup-v2.1.2.0-20191119.exe" /SILENT
"C:/source/112.05軟體/1.要安裝/3.中推會/4CMEX-FontClient-Setup-v2.7.1.1-20220323.exe" /SILENT
echo  ok
echo "安裝CI印表元件"
start/wait C:\source\112.05軟體\1.要安裝\CI印表元件\smsxw.msi /passive
echo  ok
echo "安裝XprintReader"
start/wait C:/source/112.05軟體/1.要安裝/XprintReaderSetup/XprintReaderSetup(4.0.1).exe
echo  ok
echo "安裝XprintReader"
start/wait C:\source\112.05軟體\1.要安裝\經費結報系統元件\GeasBatchsign3_25_2.msi /passive
echo  ok
echo "安裝DocImageViewer"
start/wait C:\source\112.05軟體\1.要安裝\5.DocMImageViewer2016Installer.msi /passive
echo ok
echo "install acronis"
start/wait C:/source/112.05軟體/1.要安裝/acronis_msi.exe /s
echo  ok
echo "install Agent"
start/wait C:/source/112.05軟體/1.要安裝/Agent3.5.12.3_all_bli.exe /s
echo  ok
echo "install SmartPKI"
start/wait C:/source/112.05軟體/1.要安裝/SmartPKI_6.0.0.4.exe /passive
echo  ok
echo "install 安控中介元件 (要按下一步)"
start/wait C:/source/112.05軟體/1.要安裝/勞保局安控中介元件(4.2.22.628).exe /SILENT
echo  ok
pause