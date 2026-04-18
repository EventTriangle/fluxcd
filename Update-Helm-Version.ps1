param(
    [string] $Version
)

$ErrorActionPreference = "Stop"

Write-Host "Received version: $Version"

yq -i ".version = `"$Version`"" "charts/auth/Chart.yaml"
yq -i ".appVersion = `"$Version`"" "charts/auth/Chart.yaml"

yq -i ".version = `"$Version`"" "charts/consumer/Chart.yaml"
yq -i ".appVersion = `"$Version`"" "charts/consumer/Chart.yaml"

yq -i ".version = `"$Version`"" "charts/sender/Chart.yaml"
yq -i ".appVersion = `"$Version`"" "charts/sender/Chart.yaml"

Write-Host "Version updated to $Version." -ForegroundColor Green