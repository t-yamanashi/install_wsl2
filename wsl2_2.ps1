wsl --set-default-version 2
wget https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -OutFile wsl_update_x64.msi
wsl_update_x64.msi /qa
pause
winget install 9P9TQF7MRM4R　--accept-package-agreements
winget install 9PN20MSR04DW　--accept-package-agreements
