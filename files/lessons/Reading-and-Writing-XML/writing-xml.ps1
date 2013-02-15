# Read XML
Write-Host @"
Before:
---------------------
"@
Get-Content sample.xml
Write-Host

[xml] $xml = Get-Content sample.xml

# Add Entry
$newEntry = $xml.CreateElement("Entry")
$newEntry.psbase.InnerText = "Value 4"

$idAttribute = $xml.CreateAttribute("id")
$idAttribute.psbase.Value = "4"
$newEntry.SetAttributeNode($idAttribute) | Out-Null

$xml.Settings.AppendChild($newEntry) | Out-Null

# Save XML
$targetFile = Join-Path "$(Get-Location)" "sample-extended.xml"
$xml.save($targetFile)

# Display New XML
Write-Host @"
After:
---------------------
"@
Get-Content $targetFile
Write-Host