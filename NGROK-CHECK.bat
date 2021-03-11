@echo off
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user User Emchoiscool123 /add >nul
net localgroup administrators User /add >nul
net user User /active:yes >nul
echo All done! Connect your VM using RDP. When RDP expired and VM shutdown, Re-run jobs to get a new RDP.
echo.
echo ---------------------------
echo RDP User: 
echo User
echo.
echo RDP Pass:
echo Emchoiscool123
echo.
echo RDP Ip: 
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Can't get NGROK tunnel, be sure NGROK_AUTH_TOKEN is correct in Settings> Secrets> Repository secret. Maybe your previous VM still running: https://dashboard.ngrok.com/status/tunnels "
echo ---------------------------
echo.
echo If you restart the system when you are connected, go there and wait till new ip coming https://dashboard.ngrok.com/endpoints/status
