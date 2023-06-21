$bRes = if(([version](Get-ItemPropertyValue -path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Shotcut' -Name DisplayVersion -ea SilentlyContinue)) -ge '23.06.14') { $true } else { $false };
if($bRes) { $true } else { $null };
exit(0);
