provider "aws" {
      region = "us-east-1"
}
resource "aws_instance" "app" {
    ami           = "ami-08e637cea2f053dfa"
    instance_type = "t3.micro"
    security_groups = ["default"]
    key_name      =  "abymagoo"
    tags = {
        Name = " tomcat"
        Environment = "dev"
  }  
}
