# escape=`
FROM microsoft/windowsservercore

MAINTAINER tgamlieli@xsightsys.com
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

RUN Invoke-Expression ((New-Object Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) ; `
	Install-PackageProvider -Name chocolatey -Force ; `
	choco install carbon -y 
RUN Save-Module -Name VstsTaskSdk -Path C:\ -RequiredVersion 0.9.0