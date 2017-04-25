@echo off
for /F "tokens=3" %%* in ('route print ^| findstr "\<0.0.0.0\>"') do set "gw=%%*"
ipconfig /flushdns
route add 10.100.0.0 mask 255.255.255.0 %gw% metric 25
pause
