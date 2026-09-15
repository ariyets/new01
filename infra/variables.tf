variable "aws_region" { type = string }
variable "project_name" {
  type    = string
  default = "skyward-capstone"
}
variable "allowed_ssh_cidr" { type = string }
variable "key_name" { type = string }
variable "notification_email" { type = string }
variable "bucket_name" {
  type        = string
  description = "Globally unique private bucket name."
}
