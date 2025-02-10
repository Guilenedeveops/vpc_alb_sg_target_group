# resource "aws_instance" "s1" {
#   ami = "ami-0f214d1b3d031dc53"                 
#   count = 1
#   instance_type = "t2.micro"
  
#  tags_all = {
#     Name = "dev_server${count.index}"
#   }
# }

#   output "ip" {
#     value = aws_instance.s1[*].public_ip
    #   }

#   resource "aws_iam_user" "us1" {
#     name = "cloudadmin"
#     depends_on = [ aws_instance.s1 ]
    #   }

# variable "typeofinstance" {
#     type = list(string)
#  default = ["t2.micro", "t3.small"]
# }

# resource "aws_instance" "s1" {
# ami = "ami-0f214d1b3d031dc53" 
# for_each = toset(var.typeofinstance)
# instance_type = each.key
# }
# variable "info" {
#     type = map(object({
#       ami = string
#       instance = string 
#     }))
#     default = {
#         "dev" = {ami = "ami-0f214d1b3d031dc53", instance = "t2.micro" }
#         "qa" = {ami = "ami-0f214d1b3d031dc53abc", instance = "t2.micro" }
#     }
  # }

# resource "aws_instance" "s2" {
# for_each = var.info
# ami = each.value.ami
# instance_type = each.value.instance
# tags = {
#     name = each.key
# }
# }

# provider "aws" {
#     region = var.region
  # }

# variable "region" {
#     description = "value of region"
#     type = string
#     sensitive = true
#     # default = "us-east-1"
  
# }

# provider "aws" {
#     region = "us-east-1"
#     alias = "us1"
  
# }
# provider "aws" {
#     region = "us-west-1"
#     alias = "usw1"
  
# }
# resource "aws_instance" "server1" {
#     provider = aws.us1
#     ami = "ami-0f214d1b3d031dc53" 
#     instance_type = "t2.micro"
  
# }
# provider "aws" {
#     region = "us-east-1"
#    }

# resource "aws_instance" "server1" {
#     ami = "ami-04681163a08179f28"
#     lifecycle {
#       create_before_destroy = true
#     }
#     instance_type = "t2.micro"
# }

provider "aws" {
    region = "us-east-1"
   }

resource "aws_instance" "server1" {
    ami = "ami-04681163a08179f28"
    lifecycle {
      prevent_destroy = false
    }
    instance_type = "t2.micro"
}
