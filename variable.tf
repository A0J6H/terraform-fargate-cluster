variable "aws_access_key" {
    description = "The IAM public access key"
}

variable "aws_secret_key" {
    description = "IAM secret access key"
}

variable "aws_region" {
    description = "The AWS region things are created in"
}

variable "ec2_task_execution_role_name" {
    description = "ECS task execution role name"
    default = "myEcsTaskExecutionRole"
}

variable "ecs_auto_scale_role_name" {
    description = "ECS auto scale role name"
    default = "myEcsAutoScaleRole"
}

variable "az_count" {
    description = "Number of AZs to cover in a given region"
    default = "2"
}

variable "app_image" {
    description = "Docker image to run in the ECS cluster"
    default = "891377114388.dkr.ecr.eu-central-1.amazonaws.com/app"
}

variable "app_port" {
    description = "Port exposed by the docker image to redirect traffic to"
    default = 80

}

variable "app_count" {
    description = "Number of docker containers to run"
    default = 1
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
    description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
    default = "1024"
}

variable "fargate_memory" {
    description = "Fargate instance memory to provision (in MiB)"
    default = "2048"
}

variable "dynamo_name" {
  description = "The name of the Dynamo DB table"
  default = "Gruum-Dynamo-Table"
}

variable "dynamo_read" {
  description = "Dynamo DB read capacity in GB"
  default = 1
}

variable "dynamo_write" {
  description = "Dynamo DB write capacity in GB"
  default = 1
}

variable "s3_name" {
  description = "Name of the S3 Bucket"
  default = "gruum-s3-321341"
}