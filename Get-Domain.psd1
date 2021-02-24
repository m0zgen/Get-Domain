#
# Module manifest for module 'Get-Domain'
#
# Generated on: 24.02.2021
#

@{

    RootModule           = "Get-Domain.psm1"

    # Version number of this module.
    ModuleVersion        = '0.0.3'

    # Author of this module
    Author               = 'Yevgeniy Goncharov'

    # Company or vendor of this module
    CompanyName          = 'S-A Lab'

    # Copyright statement for this module
    Copyright            = '© All rights reserved'

    # Description of the functionality provided by this module
    Description          = 'Simple script for retrieve domain or workgroup name'

    # Minimum version of the Windows Pogit rm -r --cachedwerShell engine required by this module
    PowerShellVersion    = '5.1'

    FunctionsToExport    = @(
    'isDomainMember'
    'getRole'
    'detectDomainRole'
    'detectDomainOrWorkgroupName'
    'detectOSName' )

}
