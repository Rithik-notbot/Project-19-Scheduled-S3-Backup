resource "aws_s3_bucket" "backup" {
  bucket = "rithik-project-19-scheduled-backup-2026"

  tags = {
    Name        = "Project-19-Scheduled-S3-Backup"
    Environment = "Testing"
    ManagedBy   = "Terraform"
  }
}

resource "aws_s3_bucket_versioning" "backup" {
  bucket = aws_s3_bucket.backup.id

  versioning_configuration {
    status = "Enabled"
  }
}