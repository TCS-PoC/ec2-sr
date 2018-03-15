provider "aws" {
  access_key = "AKIAJ6VF46JZT6QSA5OA"
  secret_key = "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"
  region     = "us-east-1"
}

resource "aws_instance" "instance1" {
  ami = "ami-26ebbc5c"
  instance_type = "t2.micro"
  key_name = "nVirginia"
  tags {
    Name = "hostTerraform1"
  }
}
