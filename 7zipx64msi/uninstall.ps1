Set-Location $PSScriptRoot;
$proc = (Start-Process -FilePath "msiexec.exe" -ArgumentList "/x {23170F69-40C1-2702-2301-000001000000} /qn REBOOT=REALLYSUPPRESS" -Wait -PassThru);$proc.WaitForExit();$ExitCode = $proc.ExitCode