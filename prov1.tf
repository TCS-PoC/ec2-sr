provider "aws" {
  access_key = "${access_key}"
  secret_key = "${secret_key}"
  region     = "${region}"
}

resource "aws_instance" "instance1" {
  ami = "ami-26ebbc5c"
  instance_type = "t2.micro"
  tags {
    Name = "hostTerraform1"
  }
}
