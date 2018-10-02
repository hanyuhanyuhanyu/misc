@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
call cinst nvm -y
call nvm install 10.11.0
call nvm use 10.11.0
cd %USERPROFILE%
mkdir node_dir
cd node_dir
call npm install -g express
call npm install -g express-generator
call express auto_test
cd node_dir\auto_test
call npm install redis --save
call npm install

echo 
echo -------INSTALLATION COMPLETE--------
echo type following commands
echo 
echo   cd node_dir/auto_test
echo   npm start
echo 
echo then open any browser and access http://localhost:3000
echo you will see something if installation successfully completed
echo ------------------------------------

@echo off
set /P wait=
