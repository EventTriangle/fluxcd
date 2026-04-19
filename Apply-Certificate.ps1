## use choco install openssl -y
## PS E:\RiderProjects\07_HELM\fluxcd> openssl -v
## OpenSSL 4.0.0 14 Apr 2026 (Library: OpenSSL 4.0.0 14 Apr 2026)

$ErrorActionPreference = "Stop"

$InitLocation = Get-Location

Set-Location $PSScriptRoot

kubectl create secret tls razumovsky-me-tls `
  --cert=tls.crt `
  --key=tls.key `
  -n event-triangle-dev

Set-Location $InitLocation