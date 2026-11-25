output "backup_bucket_name" {
  description = "Name of the scheduled backup S3 bucket"
  value       = aws_s3_bucket.backup.bucket
}

output "versioning_status" {
  description = "Versioning status of the backup bucket"
  value       = aws_s3_bucket_versioning.backup.versioning_configuration[0].status
}