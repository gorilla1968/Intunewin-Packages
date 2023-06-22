$bRes = Test-Path 'HKLM:\SOFTWARE\Classes\Installer\Products\96F071321C0420723210000010000000';
if($bRes) { $true } else { $null };
exit(0);
