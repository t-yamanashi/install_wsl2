if (Test-Path .¥rebootok.txt) {
  echo ----------------
} else {
  echo Install_WSL_and_VirtualMachinePlatform
  dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
  dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all
  echo wsl2installreboot > rebootok.txt
}

echo Download
