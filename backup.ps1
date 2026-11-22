$ErrorActionPreference = "Stop"

$bucketName = "rithik-project-19-scheduled-backup-2026"
$sourcePath = Join-Path $PSScriptRoot "backup-source"
$logDirectory = Join-Path $PSScriptRoot "backup-logs"

New-Item -ItemType Directory -Force -Path $sourcePath | Out-Null
New-Item -ItemType Directory -Force -Path $logDirectory | Out-Null

$logFile = Join-Path $logDirectory "backup-$(Get-Date -Format 'yyyy-MM-dd').log"

try {
    Add-Content -Path $logFile -Value "Backup started: $(Get-Date)"

    aws s3 sync $sourcePath "s3://$bucketName/backups/" --only-show-errors

    if ($LASTEXITCODE -ne 0) {
        throw "AWS CLI upload failed with exit code $LASTEXITCODE"
    }

    Add-Content -Path $logFile -Value "Backup completed successfully: $(Get-Date)"
}
catch {
    Add-Content -Path $logFile -Value "Backup failed: $_"
    Write-Error $_
    exit 1
}