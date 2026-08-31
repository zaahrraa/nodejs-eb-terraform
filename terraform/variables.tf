variable "aws_region" {
  description = "Which AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "app_name" {
  description = "Name of the Elastic Beanstalk application"
  type        = string
  default     = "nodejs-eb-terraform-demo"
}

variable "environment_name" {
  description = "Name of the Elastic Beanstalk environment"
  type        = string
  default     = "nodejs-eb-terraform-demo-env"
}

variable "solution_stack_name" {
  description = "Elastic Beanstalk solution stack (platform) to use"
  type        = string
  default     = "64bit Amazon Linux 2023 v6.11.7 running Node.js 22"  
}

variable "instance_type" {
  description = "EC2 instance type Elastic Beanstalk will launch"
  type        = string
  default     = "t3.micro"
}

variable "min_instances" {
  description = "Minimum number of EC2 instances"
  type        = number
  default     = 1
}

variable "max_instances" {
  description = "Maximum number of EC2 instances"
  type        = number
  default     = 2
}

variable "environment_type" {
  description = "'SingleInstance' or 'LoadBalanced'"
  type        = string
  default     = "SingleInstance"
}

variable "app_version_label" {
  description = "A label/tag for this specific build"
  type        = string
  default     = "v1"
}
