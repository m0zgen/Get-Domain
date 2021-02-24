# Checks domain member status
# -------------------------------------------------------------------------------------------\
function isDomainMember
{
    if ((Get-CimInstance win32_computersystem).partofdomain -eq $true) {
        return $true;
    }
    return $false;
}

# Determine role
function getRole($number)
{
    $roles = @{
        0 = "Standalone Server"
        1 = "Member Workstation"
        2 = "Standalone Server"
        3 = "Member Server"
        4 = "Backup Domain Controller"
        5 = "Primary Domain Controller"
    }

    if ($roles.ContainsKey($number))
    {
        $roles[$number]
    }
    else
    {
        "Don't known this domain role"
    }

}

# Detect role
function detectDomainRole
{
    $role = Get-CimInstance -Class Win32_ComputerSystem | Select-Object -ExpandProperty DomainRole
    [int]$domainRole = [convert]::ToInt32($role, 10)
    getRole $domainRole
}

# Detect name
function detectDomainOrWorkgroupName
{
    return (Get-CimInstance Win32_ComputerSystem).Domain
}

# Detect OS Name
function detectOSName
{
    return (Get-CimInstance Win32_ComputerSystem).Name
}



