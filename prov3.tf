provider "aws" {
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
  security_groups = "sg-74382e1c"
  subnet_id = "subnet-d69c57be" 
  tags {
    Name = "hostTerraform3"
  }
}
