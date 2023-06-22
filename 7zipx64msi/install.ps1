Set-Location $PSScriptRoot;
try { $proc  = (Start-Process -FilePath "$($Env:ProgramFiles)\7-Zip\Uninstall.exe" -ArgumentList "/S" -Wait -PassThru); } catch{};try { $proc  = (Start-Process -FilePath "$(${env:ProgramFiles(x86)})\7-Zip\Uninstall.exe" -ArgumentList "/S" -Wait -PassThru); } catch{}
$proc = (Start-Process -FilePath "msiexec.exe" -ArgumentList "/i `"7z2301-x64.msi`" /qn ALLUSERS=2 REBOOT=REALLYSUPPRESS" -Wait -PassThru);$proc.WaitForExit();$ExitCode = $proc.ExitCode
Exit($ExitCode)
