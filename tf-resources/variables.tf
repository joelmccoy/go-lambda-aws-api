variable "app_name" {
  type        = string
  default     = "go-lambda-aws-api"
  description = "The name of your application"
}

variable "app_env" {
  type        = string
  default     = "dev"
  description = "The environment in which the app is deployed i.e. (dev|staging|prod)"
}

variable "iam_policy_arn" {
  description = "IAM Policies to be attached to role"
  type        = list(string)
  default = [
    "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  ]
}