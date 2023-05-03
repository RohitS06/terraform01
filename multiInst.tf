provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAWCSPRP7C64DZZWFX"
  secret_key = "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"
}

/*
resource "aws_instance" "multi-instance" {
  ami           = "ami-06c2ec1ceac22e8d6"
  instance_type = "t2.micro"
	count = 5
	
  tags = {
    Name = "Multi_CountTerraformInstance.${count.index}"
  }
}
*/

resource "aws_instance" "multi-instance" {
  ami           = "ami-06c2ec1ceac22e8d6"
  instance_type = "t2.micro"
  for_each = toset(["Rohit", "Hem", "Josh"])
  tags = {
    Name = each.value
  }
  
}