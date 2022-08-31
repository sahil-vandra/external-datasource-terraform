provider "aws" {
  region = "ap-south-1"
}
variable "vpc_id" {}
data "external" "id" {
  program   = ["bash", "${path.module}/check_vpc_id_script.sh"]
  query = {
    id = var.vpc_id
  }
}
resource "aws_instance" "ec2" {
  ami           = "ami-068cda7597e78094b"
  instance_type = "t2.micro"
  subnet_id     = "subnet-2ec97247"
  tags = {
    "Name" = "sahil-test-ec2"
  }
  count = length(data.external.id.result.VpcId) > 0 ? 1 : 0
}