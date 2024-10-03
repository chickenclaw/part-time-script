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
ping %fir%.%sec%.%thir%.254
pause
echo ==========================================
echo "make sure IP of router is unblocked"
echo "certain setting bli.gov.tw netfield successful"
echo "add AD(computer name)"
echo "call 1299/3480"
echo ==========================================
pause