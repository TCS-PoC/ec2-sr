provider "aws" {
  alias  = "third"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "instance3" {
  ami = "ami-26ebbc5c"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  disable_api_termination = "true"
  key_name = "key1"
  placement_group = "pGroup1"
  security_groups = "sg-d4b425a0"
  subnet_id = "subnet-2b059476" 
  tags {
    Name = "hostTerraform2"
  }
}
