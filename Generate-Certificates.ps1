## use choco install openssl -y
## PS E:\RiderProjects\07_HELM\fluxcd> openssl -v
## OpenSSL 4.0.0 14 Apr 2026 (Library: OpenSSL 4.0.0 14 Apr 2026)

$ErrorActionPreference = "Stop"

$InitLocation = Get-Location

Set-Location $PSScriptRoot

$CertFile = (Get-ChildItem -Filter *.pfx | Select-Object -First 1).Name

Write-Host "Found certificate: $CertFile"

openssl pkcs12 -in "$CertFile" -clcerts -nokeys -provider-path "C:\Program Files\OpenSSL-Win64\bin" -legacy -out tls.crt

openssl pkcs12 -in "$CertFile" -nocerts -nodes -provider-path "C:\Program Files\OpenSSL-Win64\bin" -legacy -out tls.key

Set-Location $InitLocation