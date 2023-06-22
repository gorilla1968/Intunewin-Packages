$bRes = if(([version](Get-ItemPropertyValue -path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\7-Zip' -Name DisplayVersion -ea SilentlyContinue)) -ge '23.01') { $true } else { $false };
if($bRes) { $true } else { $null };
exit(0);
