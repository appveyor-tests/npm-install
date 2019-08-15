cmd /c "npm install"

$Folders = @("node_modules/gulp", "node_modules/angular")
foreach ($Folder in $Folders){
  if (-not (Test-Path ($APPVEYOR_BUILD_DIR + $Folder))){
    Write-Host "$Folder missing"
    exit 1
  }     
}
if($LastExitCode -ne 0) { $host.SetShouldExit($LastExitCode) }
