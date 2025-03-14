#provider "aws" {
#  region = "us-west-2"
#}

resource "aws_ec2_host" "test" {
  instance_type     = "t3.micro"
  availability_zone = "us-west-2a"

  provisioner "local-exec" {
    command = "echo Deploy finished"
  }
  tags = {
    yor_name             = "test"
    yor_trace            = "195dc4ff-8620-4e22-834f-4da9d13d18a8"
    git_commit           = "3038f47ffd822d4d655d1e3d090cbb078ad47393"
    git_file             = "code/build/ec2.tf"
    git_last_modified_at = "2025-03-14 01:13:25"
    git_last_modified_by = "155769245+vcortesa@users.noreply.github.com"
    git_modifiers        = "155769245+vcortesa"
    git_org              = "vcortesa"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}
