##### General Configs #####

variable "project_name" {
  description = "O nome do projeto, usado para nomear recursos no escopo deste Terraform."
  type        = string
  default     = "ecs-cluster"
}

variable "region" {
  description = "A região da AWS onde os recursos serão criados."
  type        = string
  default     = "u-east-1"
}

##### SSM VPC #####

variable "ssm_vpc_id" {
  description = "O ID da VPC onde os recursos relacionados ao SSM serão criados."
  type        = string
  default     = "/arq-EKS/vpc/vpc_id"
}

variable "ssm_public_subnet_1" {
  description = "O ID da primeira subnet pública na VPC para recursos SSM."
  type        = string
  default     = "/arq-EKS/vpc/subnet_public_1a"
}

variable "ssm_public_subnet_2" {
  description = "O ID da segunda subnet pública na VPC para recursos SSM."
  type        = string
  default     = "/arq-EKS/vpc/subnet_public_1b"
}

variable "ssm_public_subnet_3" {
  description = "O ID da terceira subnet pública na VPC para recursos SSM."
  type        = string
  default     = "/arq-EKS/vpc/subnet_public_1c"
}

variable "ssm_private_subnet_1" {
  description = "O ID da primeira subnet privada na VPC para recursos SSM."
  type        = string
  default     = "/arq-EKS/vpc/subnet_private_1a"
}

variable "ssm_private_subnet_2" {
  description = "O ID da segunda subnet privada na VPC para recursos SSM."
  type        = string
  default     = "/arq-EKS/vpc/subnet_private_1b"
}

variable "ssm_private_subnet_3" {
  description = "O ID da terceira subnet privada na VPC para recursos SSM."
  type        = string
  default     = "/arq-EKS/vpc/subnet_private_1c"
}

variable "ssm_databases_subnet_1" {
  description = "O id da primeira subnet DB na VPC para recursos SSM."
  type        = string
  default     = "/arq-EKS/vpc/subnet_databases_1a"
}

variable "ssm_databases_subnet_2" {
  description = "O id da primeira subnet DB na VPC para recursos SSM."
  type        = string
  default     = "/arq-EKS/vpc/subnet_databases_1b"
}

variable "ssm_databases_subnet_3" {
  description = "O id da primeira subnet DB na VPC para recursos SSM."
  type        = string
  default     = "/arq-EKS/vpc/subnet_databases_1c"
}

##### Balancer #####

variable "load_balancer_internal" {
  description = "Define se o Load Balancer deve ser interno (true) ou externo (false)."
  type        = bool
  default     = false
}

variable "load_balancer_type" {
  description = "O tipo de Load Balancer a ser criado (ex: 'application' ou 'network')."
  type        = string
  default     = "application"
}

#### ECS General ######

variable "nodes_ami" {
  description = "A AMI a ser usada pelos nodes do cluster ECS."
  type        = string
  default     = "ami-0e86e20dae9224db8"
}

variable "node_instance_type" {
  description = "O tipo de instância EC2 a ser usado pelos nodes do ECS."
  type        = string
  default     = "c6a.large"
}

variable "node_volume_size" {
  description = "O tamanho do volume, em GiB, a ser usado pelos nodes do ECS."
  type        = number
  default     = 50
}

variable "node_volume_type" {
  description = "O tipo de volume EBS a ser usado pelos nodes do ECS (ex: 'gp2', 'io1')."
  type        = string
  default     = "gp3"
}

variable "cluster_on_demand_min_size" {
  description = "O tamanho mínimo do cluster ECS para instâncias on-demand."
  type        = number
  default     = 2
}

variable "cluster_on_demand_max_size" {
  description = "O tamanho máximo do cluster ECS para instâncias on-demand."
  type        = number
  default     = 4
}

variable "cluster_on_demand_desired_size" {
  description = "O número desejado de instâncias on-demand no cluster ECS."
  type        = number
  default     = 3
}

variable "cluster_spot_min_size" {
  description = "O tamanho mínimo do cluster ECS para instâncias spot."
  type        = number
  default     = 2
}

variable "cluster_spot_max_size" {
  description = "O tamanho máximo do cluster ECS para instâncias spot."
  type        = number
  default     = 4
}

variable "cluster_spot_desired_size" {
  description = "O número desejado de instâncias spot no cluster ECS."
  type        = number
  default     = 3
}