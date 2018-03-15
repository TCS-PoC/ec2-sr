variable "access_key" {}
variable "secret_key" {}
variable "region" {}

provider "aws" {
  alias  = "second"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "instance2" {
  ami = "ami-26ebbc5c"
  instance_type = "t2.micro"
  tags {
    Name = "hostTerraform2"
  }
}
