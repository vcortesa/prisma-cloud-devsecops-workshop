provider "aws" {
  region = "us-west-2"
}

resource "aws_ec2_host" "test" {
  instance_type     = "t3.micro"
  availability_zone = "us-west-2a"

  provisioner "local-exec" {
    command = "echo Deploy finished"
  }
  tags = {
    yor_name  = "test"
    yor_trace = "195dc4ff-8620-4e22-834f-4da9d13d18a8"
  }
}
