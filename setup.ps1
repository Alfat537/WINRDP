Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
& {$P = $env:TEMP + '\chrome-remote-desktop_current_amd64.deb'; Invoke-WebRequest 'https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb' -OutFile $P; Start-Process $P -Wait; Remove-Item $P}
& {$P = $env:TEMP + '\google-chrome-stable_current_amd64.deb'; Invoke-WebRequest 'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb' -OutFile $P; Start-Process -FilePath $P -Args '/install' -Verb RunAs -Wait; Remove-Item $P}
