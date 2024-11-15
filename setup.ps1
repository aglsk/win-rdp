# Desabilitar os perfis de firewall (cuidado com a segurança)
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False

# Download e instalação do Chrome Remote Desktop Host
$crdInstaller = "$env:TEMP\chromeremotedesktophost.msi"
Invoke-WebRequest -Uri "https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi" -OutFile $crdInstaller
Start-Process -FilePath $crdInstaller -Wait
Remove-Item $crdInstaller

# Download e instalação do Google Chrome
$chromeInstaller = "$env:TEMP\chrome_installer.exe"
Invoke-WebRequest -Uri "https://dl.google.com/chrome/install/latest/chrome_installer.exe" -OutFile $chromeInstaller
Start-Process -FilePath $chromeInstaller -ArgumentList '/silent', '/install' -Verb RunAs -Wait
Remove-Item $chromeInstaller
