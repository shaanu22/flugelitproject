
variable "aws_region" {
  description = "This is the AWS region where the resources will be created."
  default     = "us-east-1"
}

variable "bucket_prefix" {
  type        = string
  description = "This creates a unique bucket name beginning with the specified prefix."
  default     = "terra-s3bucket-"
}

variable "tags" {
  type        = map(any)
  description = "(Optional) A mapping of tags to assign to the S3 bucket."
  default = {
    environment = "DEV"
    terraform   = "true"
  }
}

variable "versioning" {
  type        = bool
  description = "This is an optional state of versioning."
  default     = true
}

variable "acl" {
  type        = string
  description = " This defaults to private."
  default     = "private"
}


variable "AWS_ACCESS_KEY_ID" {}

variable "AWS_SECRET_ACCESS_KEY" {}
