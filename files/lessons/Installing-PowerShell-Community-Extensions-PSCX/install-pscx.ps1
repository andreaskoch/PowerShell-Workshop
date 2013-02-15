$installationDirectory = (Get-Item $MyInvocation.InvocationName).Directory.FullName
$resourcesDirectory = Join-Path $installationDirectory Resources
$archive = (Get-ChildItem "$resourcesDirectory\Pscx*.zip") | Select -First 1

function Extract-Zip
{
	param([string]$zipfilename, [string] $destination)

	if(test-path($zipfilename))
	{	
		$shellApplication = new-object -com shell.application
		$zipPackage = $shellApplication.NameSpace($zipfilename)
		$destinationFolder = $shellApplication.NameSpace($destination)
		$destinationFolder.CopyHere($zipPackage.Items())
	}
}

if ((Test-Path $archive) -eq $false)
{
    Write-Host "No PSCX archive found in the resources directory"
    exit
}

$targetDirectory = Join-Path (Split-Path $Profile -parent) Modules
if ((Test-Path $targetDirectory) -eq $false)
{
    Write-Host "Creating the modules directory '$targetDirectory'"
    New-Item $targetDirectory -Type Directory -Force | Out-Null
}

Write-Host "Deploying PSCX Module '$archive' to '$targetDirectory'"
Extract-Zip -zipfilename $archive -destination $targetDirectory | Out-Null

if ((Test-Path $Profile) -eq $false)
{
    Write-Host "Creating PowerShell Profile"
    New-Item $Profile -Type file -Force | Out-Null
}

Write-Host "Adding PSCX Module to PowerShell Profile"
$moduleImport = @"
Import-Module Pscx -arg `"`$(Split-Path `$profile -parent)\Modules\Pscx\Pscx.UserPreferences.ps1`"
"@

$profiles = Get-Item "$(Split-Path $Profile -Parent)\*_profile.ps1"

Write-Host "Adding import to profiles: $profiles"
$moduleImport | Out-File $profiles -Append

Write-Host "Opening the PowerShell Profile Directory"
explorer (Split-Path $profile -parent)