echo Install_WSL_and_VirtualMachinePlatform
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all
echo "echo Download" > wsl2.ps1

echo "rm wsl2.ps1" >> wsl2.ps1
