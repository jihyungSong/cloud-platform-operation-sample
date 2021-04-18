resource "aws_instance" "public_instance" {
  associate_public_ip_address   =   true
  ami                           =   var.ami_id
  subnet_id                     =   element(var.public_subnet_ids, 0)
  instance_type                 =   var.instance_type
  key_name                      =   var.ec2_keypair
  vpc_security_group_ids        =   [var.public_security_group_id]

  tags          =   {
    Name        =   var.public_instance_name
    Managed_by  =   "terraform"
  }
}
