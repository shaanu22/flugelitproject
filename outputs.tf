output "s3_bucket_name" {
  value = aws_s3_bucket.terra-s3-bucket.id
}


output "s3_bucket_region" {
  value = aws_s3_bucket.terra-s3-bucket.region
}


output "s3_bucket_object" {
  value = aws_s3_bucket_object.multiobject
}
