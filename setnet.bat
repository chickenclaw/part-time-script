@echo off
chcp 65001
for /F "delims=" %%F in ('type "%0\..\ip.txt"') do (
    set "ip_address=%%F"
)
for /F "delims=. tokens=1,2,3" %%F in ("%ip_address%") do (
    set "fir=%%F"
    set "sec=%%G"
    set "thir=%%H"
)
netsh interface ipv4 set dnsservers name="乙太網路" static address=10.0.222.1
netsh interface ipv4 add dnsservers name="乙太網路" address=10.76.48.1
netsh interface ipv4 add dnsservers name="乙太網路" address=10.78.48.1
netsh interface ipv4 set address name="乙太網路" static %ip_address% mask=255.255.255.0 gateway=%fir%.%sec%.%thir%.254
ipconfig/all
echo ==========================================
echo
echo "call 1293"
echo "click ping.bat"
echo "do not touch until finish mac"
echo ==========================================
pause