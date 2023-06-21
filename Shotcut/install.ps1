Set-Location $PSScriptRoot;
$proc = (Start-Process -FilePath "shotcut-win64-230614.exe" -ArgumentList "/S" -Wait -PassThru);$proc.WaitForExit();$ExitCode = $proc.ExitCode
Exit($ExitCode)
