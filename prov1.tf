provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "instance1" {
  ami = "ami-26ebbc5c"
  instance_type = "t2.micro"
  tags {
    Name = "hostTerraform1"
  }
}
