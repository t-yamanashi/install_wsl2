echo Install_WSL_and_VirtualMachinePlatform
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all
echo "echo Download" > wsl2.ps1
echo "wsl --set-default-version 2" >> wsl2.ps1
echo "wget https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -OutFile wsl_update_x64.msi" >> wsl2.ps1
echo "start wsl_update_x64.msi" >> wsl2.ps1
echo "echo ok" >> wsl2.ps1
echo "rm wsl2.ps1" >> wsl2.ps1
