

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "clement-instance"
  instance_type          = "t2.micro"


  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}