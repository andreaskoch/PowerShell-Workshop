$currentDirectory = (Get-Item $MyInvocation.InvocationName).Directory.FullName
$watchFolder = Join-Path $Home "Desktop"
$filter = "*.*"

$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = $watchFolder
$watcher.IncludeSubdirectories = $false
$watcher.EnableRaisingEvents = $true
$watcher.Filter = $filter

$changed = Register-ObjectEvent $watcher "Changed" -Action {
	$pathOfChangedFile = ($eventArgs.FullPath)
	$fileNameOfChangedFile = (Get-Item $pathOfChangedFile).Name
	$fileNameOfChangedFileWithoutExtension = (Get-Item $pathOfChangedFile).BaseName
	$folder = (Get-Item $pathOfChangedFile).Directory.FullName
	
	Write-Host "$fileNameOfChangedFile just changed"
}