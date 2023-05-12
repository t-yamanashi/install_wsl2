if (Test-Path .¥rebootok.txt) {
  echo 再起動後の処理を実行します
} else {
  echo 再起動の案内が表示後yを入力して再起動してください
  echo 再起動後に再度 wsl2.ps1を実行してください
  dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
  dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all
  echo wsl2installreboot > rebootok.txt
}

echo 続いてダウンロード
