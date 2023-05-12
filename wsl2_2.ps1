wsl --set-default-version 2
wget https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -OutFile wsl_update_x64.msi
wsl_update_x64.msi
pause
wsl --update
wsl install -d Ubuntu-22.04
