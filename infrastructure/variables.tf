variable "aws_profile" {
  description = "AWS profile to use"
  type        = string
}

variable "prefix" {
  description = "prefix for all resources"
  type        = string
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
}

variable "aws_instance_type" {
  description = "Type of instance to launch"
  type        = string
}

variable "aws_public_key" {
  description = "value"
  type        = string
}