resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  username             = "cloudmine"
  password             = "minhasenhaforte@123456789!#$"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}