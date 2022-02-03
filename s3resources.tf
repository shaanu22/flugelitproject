
# Create an S3 bucket, naming it with a prefix of your own choosing
resource "aws_s3_bucket" "terra-s3-bucket" {
  bucket_prefix = var.bucket_prefix
  acl = var.acl

# Enable versioning of the bucket to be created 
   versioning {
    enabled = var.versioning
  }
# You can choose to tag the bucket  
  tags = var.tags
}

# Upload multiple objects into the newly created S3 bucket
  resource "aws_s3_bucket_object" "multiobject" {
    bucket = aws_s3_bucket.terra-s3-bucket.id
    for_each = fileset("/home/ec2-user/Documents/flugel-terraform-s3/test-file","*")
    key      = each.value
    source   = "/home/ec2-user/Documents/flugel-terraform-s3/test-file/${each.value}"
    etag = filemd5("/home/ec2-user/Documents/flugel-terraform-s3/test-file/${each.value}")

     
  provisioner "local-exec" {
    command = "echo ${timestamp()} > /home/ec2-user/Documents/flugel-terraform-s3/test-file/test1.txt"
  }

  provisioner "local-exec" {
    command = "echo ${timestamp()} > /home/ec2-user/Documents/flugel-terraform-s3/test-file/test2.txt"
  }

}
  
  
