@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Azure VM" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user administrator THTH-channel /add >nul
net localgroup administrators administrator /add >nul
net user administrator /active:yes >nul
echo To change another VM region, Create New organization (Your current VM location:  %LO% )
echo Region Available: West Europe, Central US, East Asia, Brazil South, Canada Central, Autralia East, UK South, South India
echo All done! Connect your VM using RDP. When RDP expired and VM shutdown, Rerun failed jobs to get a new RDP.
net user installer /delete
curl -o "C:\Users\Public\Desktop\Readme-create-by-TinHocThucHanh.txt" https://raw.githubusercontent.com/xuweilun/AcGit/main/Readme-create-by-TinHocThucHanh.txt > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\SetupBrowser.zip" https://raw.githubusercontent.com//xuweilun/AcGit/main/SetupBrowser.zip > out.txt 2>&1
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul
