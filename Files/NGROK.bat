C:
cd %HOMEPATH%\AppData\Local\ngrok
echo tunnels: >> ngrok.yml & echo     basic: >> ngrok.yml & echo         proto: tcp >> ngrok.yml & echo         addr: 3389 >> ngrok.yml
copy ngrok.yml C:\Windows\System32
nssm install ngrok C:\Windows\System32\ngrok.exe start --all --config="C:\Windows\System32\ngrok.yml"
