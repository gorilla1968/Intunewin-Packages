Set-Location $PSScriptRoot;
try {
    $proc = (Start-Process -FilePath "msiexec.exe" -ArgumentList "/x {23170F69-40C1-2702-1805-000001000000} /qn REBOOT=REALLYSUPPRESS" -Wait -PassThru); $proc.WaitForExit(); 
    $proc = (Start-Process -FilePath "msiexec.exe" -ArgumentList "/x {23170F69-40C1-2702-1900-000001000000} /qn REBOOT=REALLYSUPPRESS" -Wait -PassThru); $proc.WaitForExit();
    $proc = (Start-Process -FilePath "msiexec.exe" -ArgumentList "/x {23170F69-40C1-2702-2106-000001000000} /qn REBOOT=REALLYSUPPRESS " -Wait -PassThru); $proc.WaitForExit();
    $proc = (Start-Process -FilePath "msiexec.exe" -ArgumentList "/x {23170F69-40C1-2702-2107-000001000000} /qn REBOOT=REALLYSUPPRESS " -Wait -PassThru); $proc.WaitForExit();
    $proc = (Start-Process -FilePath "msiexec.exe" -ArgumentList "/x {23170F69-40C1-2702-2200-000001000000} /qn REBOOT=REALLYSUPPRESS " -Wait -PassThru); $proc.WaitForExit();
    $proc = (Start-Process -FilePath "msiexec.exe" -ArgumentList "/x {23170F69-40C1-2702-2201-000001000000} /qn REBOOT=REALLYSUPPRESS " -Wait -PassThru); $proc.WaitForExit()    
} catch {}
$proc = (Start-Process -FilePath "7z2301-x64.exe" -ArgumentList "/S" -Wait -PassThru);$proc.WaitForExit();$ExitCode = $proc.ExitCode
Exit($ExitCode)
