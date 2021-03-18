# Script that will setup WSL and provide info on upgrading to WSL2.

pause | Write-Output "You should check out the source code before running this script.

Press any key to continue..."

If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    Exit
}

Set-Location $env:windir\System32

#Will install WSL and Virtual Machine Platform.
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# If you run Windows 10, version 1903 or 1909, then comment out line 16 and uncomment the line below.
# Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -NoRestart
Write-Output "To enable WSL2, you need to download and install this:

https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi

After that action has been performed, run this command in Powershell to set default WSL version to WSL2:

'wsl --set-default-version 2'

NOTE: This will only apply to distros that have not yet been installed!

If you already have a WSL distro installed, you can just run
'wsl --list --verbose'
and then this to set the distro to run in WSL2. 
'wsl --set-version <distribution name> <versionNumber>'

For example, to set Ubuntu to run in WSL2:

'wsl --set-version Ubuntu 2'

More information can be found at:
https://docs.microsoft.com/en-us/windows/wsl/install-win10#step-4---download-the-linux-kernel-update-package
" 
pause | Write-Output "Press any key to close this window."
