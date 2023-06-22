Set-Location $PSScriptRoot;
$proc  = (Start-Process -FilePath "$($Env:ProgramFiles)\7-Zip\Uninstall.exe" -ArgumentList "/S" -Wait -PassThru);$proc.WaitForExit();$ExitCode = $proc.ExitCode