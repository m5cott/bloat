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

function Set-GitDir { Set-Location $HOME\Projects\github\m5cott }
Set-Alias gd Set-GitDir

function Set-HomeDir { Set-Location $HOME }
Set-Alias h Set-HomeDir

function Set-DocDir { Set-Location $HOME\OneDrive\Documents }
Set-Alias d Set-DocDir

function Set-DowDir { Set-Location $HOME\Downloads }
Set-Alias dl Set-DowDir

Set-Alias c Clear-Host

function Get-GitAdd { git.exe add "$args" }
Set-Alias gta Get-GitAdd

function Get-GitCommit { git.exe commit -m "$args" }
Set-Alias gtc Get-GitCommit

function Get-GitPush { git.exe push }
Set-Alias gtp Get-GitPush

# Disabled at this time. Creating git status alias breaks posh-git functionality
#function Get-GitStatus { git.exe status }
#Set-Alias gts Get-GitStatus


# Elevating privileges on Linux in Powershell 7
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

    function New-Password { C:\Users\mcsco\Projects\github\m5cott\my-utils\getpw\src\getpw.exe $args[0] $args[1] }
    Set-Alias getpw New-Password
}
