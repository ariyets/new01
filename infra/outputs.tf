output "web_url" { value = "http://${aws_instance.web.public_dns}" }
output "backup_bucket" { value = aws_s3_bucket.assets.bucket }
output "sns_topic_arn" { value = aws_sns_topic.alerts.arn }
