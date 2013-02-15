# Check if the PowerShell Profile exists. If not create one.
If ((Test-Path $Profile) -eq $false)
{
	New-Item $Profile -Type File -Force
}

# Add the functions to the PowerShell Profile
@"
new-alias Out-Clipboard `$env:SystemRoot\system32\clip.exe

function Get-ClipboardText()
{
	Add-Type -AssemblyName System.Windows.Forms
	`$tb = New-Object System.Windows.Forms.TextBox
	`$tb.Multiline = $true
	`$tb.Paste()
	`$tb.Text
}
"@ | Out-File $Profile -Append

# Open the PowerShell Profile in Notepad
notepad $Profile

# Open the PowerShell Profile Directory
explorer (Get-Item $Profile).Directory