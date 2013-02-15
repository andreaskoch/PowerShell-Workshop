[xml] $xml = Get-Content sample.xml
foreach ($setting in $xml.Settings.Entry)
{
	Write-Host "$($setting.psbase.InnerText) (Id: $($setting.Id))"
}