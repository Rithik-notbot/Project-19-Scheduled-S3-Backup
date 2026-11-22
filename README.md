# Project 19: Scheduled S3 Backup

## Objective
Automate backups of local files to Amazon S3 on a scheduled basis.

## Tools Used
- Terraform
- Amazon S3
- AWS CLI
- PowerShell
- Windows Task Scheduler
- Git and GitHub

## Implementation
1. Create an S3 backup bucket using Terraform.
2. Enable S3 bucket versioning.
3. Use a PowerShell script to synchronize local files to S3.
4. Configure Windows Task Scheduler to run the script daily.
5. Record backup execution results in a local log file.

## Backup Configuration
- Bucket: rithik-project-19-scheduled-backup-2026
- S3 destination prefix: backups/
- Schedule: Daily
- Versioning: Enabled

## Security
- The bucket is not configured for public access.
- Terraform state files and generated logs are excluded from Git.

## Deliverables
- Terraform configuration
- PowerShell backup script
- Scheduled task configuration
- Backup execution evidence

## Status
Configuration prepared. AWS deployment and scheduled backup testing pending approval.