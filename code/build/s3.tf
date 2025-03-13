provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "e3330727-8929-4858-9310-abb6f0bdfb71"
    git_commit           = "a54c4b5fe192d4697e0793bb025f2d1989e261d9"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-03-13 01:02:46"
    git_last_modified_by = "155769245+vcortesa@users.noreply.github.com"
    git_modifiers        = "155769245+vcortesa"
    git_org              = "vcortesa"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
