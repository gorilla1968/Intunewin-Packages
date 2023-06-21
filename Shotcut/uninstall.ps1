Set-Location $PSScriptRoot;
$proc  = (Start-Process -FilePath "$(${Env:ProgramFiles})\Shotcut\uninstall.exe" -ArgumentList "/S" -Wait -PassThru);$proc.WaitForExit();$ExitCode = $proc.ExitCode