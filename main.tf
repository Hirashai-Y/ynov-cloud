resource "aws_ssm_parameter" "bozo" {
  name  = "bozo"
  type  = "String"
  value = "clown"
}



module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "clement-instance"
  instance_type          = "t2.micro"
  key_name               = "clement"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}