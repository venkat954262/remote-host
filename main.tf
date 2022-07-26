provider "aws" {
   region = "ap-south-1"
	
}


resource "aws_instance" "tera-launch-inst-001" {
  ami           = "ami-08df646e18b182346"
  instance_type = "t2.micro"

  tags = {
    name = "test"
  }


#provisioner "local-exec" {
#      command = "aws ec2 stop-instances --instance-ids ${aws_instance.tera-launch-inst-001.id}"

#  }

}


resource "null_resource" "start-ins" {

 provisioner "local-exec" {
    
    command = "aws ec2 start-instances --instance-ids ${aws_instance.tera-launch-inst-001.id}"
  }
}


#test
