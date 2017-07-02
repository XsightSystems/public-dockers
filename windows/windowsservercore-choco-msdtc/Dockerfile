# escape=`
FROM xsightsys/windowsservercore-chocolatey

MAINTAINER ohanson@xsightsys.com
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

RUN Set-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name ServerPriorityTimeLimit -Value 0 -Type DWord

RUN Stop-Service MSDTC ;`
    Uninstall-Dtc -Confirm:$false ;`
    Install-Dtc ;`
    Set-ItemProperty -Path 'HKLM:\Software\Microsoft\MSDTC\Security' -Name LuTransactions -Value 1 ;`
    Set-ItemProperty -Path 'HKLM:\Software\Microsoft\MSDTC\Security' -Name NetworkDtcAccess -Value 1 ;`
    Set-ItemProperty -Path 'HKLM:\Software\Microsoft\MSDTC\Security' -Name NetworkDtcAccessInbound -Value 1 ;`
    Set-ItemProperty -Path 'HKLM:\Software\Microsoft\MSDTC\Security' -Name NetworkDtcAccessOutbound -Value 1 ;`
    Set-ItemProperty -Path 'HKLM:\Software\Microsoft\MSDTC\Security' -Name NetworkDtcClients -Value 1 ;`
    Set-ItemProperty -Path 'HKLM:\Software\Microsoft\MSDTC\Security' -Name NetworkDtcAccessTransactions -Value 1 ;`
    Set-ItemProperty -Path 'HKLM:\Software\Microsoft\MSDTC\Security' -Name NetworkDtcAccessAdmin -Value 1 ;`
    Set-ItemProperty -Path 'HKLM:\Software\Microsoft\MSDTC\Security' -Name NetworkDtcAccessClients -Value 1 ;`
    Set-ItemProperty -Path 'HKLM:\Software\Microsoft\MSDTC' -Name AllowOnlySecureRpcCalls -Value 1 ;`
    Set-ItemProperty -Path 'HKLM:\Software\Microsoft\MSDTC' -Name FallbackToUnsecureRPCIfNecessary -Value 0 ;`
    Set-ItemProperty -Path 'HKLM:\Software\Microsoft\MSDTC' -Name TurnOffRpcSecurity -Value 0 ;`
    Set-Service MSDTC -StartupType Automatic ;`
    Restart-Service MSDTC -Force ;`
    Set-DtcNetworkSetting -AuthenticationLevel NoAuth -Confirm:$false 
