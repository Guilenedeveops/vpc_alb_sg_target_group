provider "aws" {
    region = "us-east-1"
  
}

import {
  to = aws_instance.web
  id = "i-05753af0b910cae4d"
}

