##
# Name: Microsoft.PowerShell_profile.ps1
# Author: Michael Scott (m5cott)
# Created: 2020-10-18
##

# Importing posh-git and oh-my-posh modules
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

# Custom Alias for Powershell on Windows, Mac, and Linux
Set-Alias find Get-Item

function Get-AllItems { Get-ChildItem -Force "$args" }
Set-Alias ll Get-AllItems

function New-ItemDirectory { New-Item -Type Directory -Name "$args" }
Set-Alias nd New-ItemDirectory

function New-ItemFile { New-Item -Type File -Name "$args"}
Set-Alias nf New-ItemFile

# Elevating privileges in Powershell 7
if ($isLinux)
{
    function Get-Sudo { & /usr/bin/env sudo pwsh -command "& $args" }
    set-alias sudo Get-Sudo
}

if ($isWindows) {
    function shasum { certutil.exe -hashfile "$args" SHA256 }
    Set-Alias sha256 shasum
    
    function md5sum { certutil.exe -hashfile "$args" MD5 }
    Set-Alias md5 md5sum
}
