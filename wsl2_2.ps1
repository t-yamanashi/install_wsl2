wsl --set-default-version 2
wget https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -OutFile wsl_update_x64.msi
wsl_update_x64.msi /q
pause
winget install --name "Windows Subsystem for Linux"
winget install --name "Ubunut 22.04.2 LTS"
