@{
    # Script module or binary module file associated with this manifest.
    #RootModule = 'GroupPolicyDsc.psm1'
    
    # Version number of this module.
    moduleVersion = '0.5.4'
    
    # Supported PSEditions
    # CompatiblePSEditions = @()
    
    # ID used to uniquely identify this module
    GUID = '4d0f043c-c0f2-46bc-b01b-4a9cc90d37bd'
    
    # Author of this module
    Author = 'Daniel Snelling'
    
    # Company or vendor of this module
    CompanyName = 'Citadel Group'
    
    # Copyright statement for this module
    Copyright = '(c) 2018 Citadel Group. All rights reserved.'
    
    # Description of the functionality provided by this module
    Description = 'This module provides the functionality needed to manipulate Group Policy.'
    
    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = '5.1'
    
    # Name of the Windows PowerShell host required by this module
    # PowerShellHostName = ''
    
    # Minimum version of the Windows PowerShell host required by this module
    # PowerShellHostVersion = ''
    
    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # DotNetFrameworkVersion = ''
    
    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # CLRVersion = ''
    
    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''
    
    # Modules that must be imported into the global environment prior to importing this module
    #RequiredModules = @(@{ModuleName='PSDscResources';RequiredVersion='2.9.0.0'})
    
    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()
    
    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    # ScriptsToProcess = @()
    
    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()
    
    # Format files (.ps1xml) to be loaded when importing this module
    # FormatsToProcess = @()
    
    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    NestedModules = @('DSCClassResources\GroupPolicy\GroupPolicy.psd1',
                      'DSCClassResources\GPLink\GPLink.psd1',
                      'DSCClassResources\GPPermission\GPPermission.psd1',
                      'DSCClassResources\GPRegistryValue\GPRegistryValue.psd1')                      
    
    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = @()
    
    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport = @()
    
    # Variables to export from this module
    VariablesToExport = '*'
    
    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport = @()
    
    # DSC resources to export from this module
    DscResourcesToExport = @('GroupPolicy','GPLink','GPPermission','GPRegistryValue')
    
    # List of all modules packaged with this module
    # ModuleList = @()
    
    # List of all files packaged with this module
    # FileList = @()
    
    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData = @{
    
        PSData = @{
    
            # Tags applied to this module. These help with module discovery in online galleries.
            Tags = 'CiX', 'DSC', 'DSCResourceKit', 'DSCResource'
    
            # A URL to the license for this module.
            LicenseUri = 'https://notavailable'
    
            # A URL to the main website for this project.
            ProjectUri = 'https://notavailable'
    
            # A URL to an icon representing this module.
            # IconUri = ''
    
            # ReleaseNotes of this module
            ReleaseNotes = '* Added Description and Parameter description for composite resources'
    
        } # End of PSData hashtable
    
    } # End of PrivateData hashtable
    
    # HelpInfo URI of this module
    # HelpInfoURI = ''
    
    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''
    
}
