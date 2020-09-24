resource "aws_instance" "myawsserver" {
  ami = "ami-00514a528eadbc95b"
  instance_type = "t2.micro"

  tags = {
    Name = "shafi jenkins"
    Env = "Prod"
  }
}

output "myawsserver-ip" {
  value = "${aws_instance.myawsserver.public_ip}"
}

