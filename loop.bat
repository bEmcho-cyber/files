@echo off
tasklist | find /i "ngrok.exe" >Nul && goto check || echo "NGROK Services is not Running. One NGROK FREE Account/ 1 Tunnel, If u want Run more VM, Type new Ngrok token in code> Secrets> Repository secrets then run workflow again. Your current workflow end shortly. If you still have questions contact: https://fb.com/thuong.hai.581 " & ping 127.0.0.1 >Nul & ping 127.0.0.1 >Nul & exit
:check
ping 127.0.0.1 > nul
cls
goto check
