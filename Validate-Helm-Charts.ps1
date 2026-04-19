$ErrorActionPreference = "Stop"

$InitLocation = Get-Location

Set-Location $PSScriptRoot

helm template auth-app .\charts\auth\ --values .\charts\auth\values.yaml --debug
helm template consumer-app .\charts\consumer\ --values .\charts\consumer\values.yaml --debug
helm template sender-app .\charts\sender\ --values .\charts\sender\values.yaml --debug

Set-Location $InitLocation