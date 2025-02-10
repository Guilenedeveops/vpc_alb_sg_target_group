
resource "aws_instance" "web" {
  ami                                  = "ami-0f214d1b3d031dc53"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1c"
  instance_type                        = "t2.micro"
  key_name                             = "ecr_key"
  monitoring                           = false
  subnet_id                            = "subnet-0f5779d5391c4863c"
   vpc_security_group_ids      = ["sg-024d1c68450c79c33"]
  
 tags_all = {
    Name = "tf_import"
  }
  
  
}
