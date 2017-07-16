$ErrorActionPreference = 'Stop'; # stop on all errors

docker pull microsoft/windowsservercore:latest
if ($LastExitCode -ne 0) {throw 'Command failed with exit code $LastExitCode.'};`
docker build -t xsightsys/windowsservercore-chocolatey .
if ($LastExitCode -ne 0) {throw 'Command failed with exit code $LastExitCode.'};`
docker push xsightsys/windowsservercore-chocolatey:latest
if ($LastExitCode -ne 0) {throw 'Command failed with exit code $LastExitCode.'};`
