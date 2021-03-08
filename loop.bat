@echo off
tasklist | find /i "ngrok.exe" >Nul && goto check || echo "NGROK Services is not Running. One NGROK FREE Account/ 1 Tunnel, If u want Run more VM, Update new NGROK_AUTH_TOKEN into Settings> Secrets> Repository secrets then run workflow again. Your current workflow end shortly. If you still have questions contact: https://fb.com/thuong.hai.581 " & ping 10.10.10.10 >Nul & ping 10.10.10.10 >Nul & exit
:check
ping 10.10.10.10 > nul
cls
goto check