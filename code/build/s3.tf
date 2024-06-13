provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "30b1c3853ecb3a6b92e3e7df7d35464696ff8112"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-06-13 00:34:18"
    git_last_modified_by = "c.matthew.green.biz@outlook.com"
    git_modifiers        = "c.matthew.green.biz"
    git_org              = "CMG-Professional"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "92413fb5-b338-4a5e-811a-d0510b5cd304"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

