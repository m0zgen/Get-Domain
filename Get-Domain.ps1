Import-Module .\Get-Domain.psd1

$global:isDomain = $( isDomainMember )
if ($isDomain)
{
    $global:domainName = $( detectDomainOrWorkgroupName )
    $global:domainRole = $( detectDomainRole )
    Write-Host "This computer is domain member:"
    Write-Host "Host name: $( detectOSName )"
    Write-Host "Domain name: $domainName"
    Write-Host "Domain role: $domainRole"
}
else
{
    Write-Host "This computer does not domain member"
    Write-Host "Host name: $( detectOSName )"
    Write-Host "Workgroup name: $( detectDomainOrWorkgroupName )"
}
