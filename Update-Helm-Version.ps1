param(
    [string] $Version,
    [string] $Tag="latest"
)

$ErrorActionPreference = "Stop"

Write-Host "Received version: $Version"

yq -i ".version = `"$Version`"" "charts/auth/Chart.yaml"
yq -i ".appVersion = `"$Version`"" "charts/auth/Chart.yaml"
yq -i ".image.tag = `"$Tag`"" "charts/auth/values.yaml"

yq -i ".version = `"$Version`"" "charts/consumer/Chart.yaml"
yq -i ".appVersion = `"$Version`"" "charts/consumer/Chart.yaml"
yq -i ".image.tag = `"$Tag`"" "charts/consumer/values.yaml"

yq -i ".version = `"$Version`"" "charts/sender/Chart.yaml"
yq -i ".appVersion = `"$Version`"" "charts/sender/Chart.yaml"
yq -i ".image.tag = `"$Tag`"" "charts/sender/values.yaml"

Write-Host "Tag updated to $Tag." -ForegroundColor Green
Write-Host "Version updated to $Version." -ForegroundColor Green