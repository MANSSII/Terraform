provider "aws" {
  alias      = "mumbai"
  region     = "ap-south-1"
}

provider "aws" {
  alias      = "virginia"
  region     = "us-east-1"
}

resource "aws_instance" "mytf_mumbai" {
  provider    = aws.mumbai
  ami         = "ami-08e5424edfe926b43"
  instance_type = "t2.micro"
}

resource "aws_instance" "mytf_virginia" {
  provider    = aws.virginia
  ami         = "ami-0261755bbcb8c4a84"
  instance_type = "t2.micro"
}

