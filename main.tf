resource "aws_ssm_parameter" "bozo" {
  name  = "foo"
  type  = "String"
  value = "clown"
}