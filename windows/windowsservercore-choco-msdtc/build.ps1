$ErrorActionPreference = 'Stop'; # stop on all errors

docker pull xsightsys/windowsservercore-chocolatey
if ($LastExitCode -ne 0) {throw 'Command failed with exit code $LastExitCode.'};`
docker build -t xsightsys/windowsservercore-choco-msdtc .
if ($LastExitCode -ne 0) {throw 'Command failed with exit code $LastExitCode.'};`
docker push xsightsys/windowsservercore-choco-msdtc:latest
if ($LastExitCode -ne 0) {throw 'Command failed with exit code $LastExitCode.'};`
