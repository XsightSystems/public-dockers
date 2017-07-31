# escape=`
FROM xsightsys/windowsservercore-choco-msdtc

MAINTAINER ohanson@xsightsys.com
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

ADD https://download.microsoft.com/download/8/8/8/888988f5-43db-4882-ac1a-e7f79ee70712/vs_remotetools.exe /
RUN C:\vs_remotetools.exe /Quiet /NoRestart

ADD https://download.microsoft.com/download/8/7/a/87a28af1-1623-4e08-b62d-0429f05382b7/vstf_testagent.exe /
RUN C:\vstf_testagent.exe /Quiet /NoRestart

RUN Remove-Item -Force C:\vs_remotetools.exe;`
    Remove-Item -Force C:\vstf_testagent.exe
