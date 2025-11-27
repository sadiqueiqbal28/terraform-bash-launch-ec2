variable "instance_type" {
  default = "t2.nano"
  type = string
  description = "This is default variable for instance type"
}

variable "vol_size" {
  default = 8
  type = number
  description = "This is default size for EBS volume"
}

variable "sec_grp" {
  default = "Default security group"
  type = string
  description = "Default - Terraform"
}

variable "in_ports" {
  default = [22]
  type = list(number)
  description = "Default allowed inbound port for the default server"
}

variable "sec_grp_desc" {
  default = "This is security group created for default server"
  type = string
}

variable "key_name" {
  default = "terr_env"
  type = string
  description = "This is default key for default server"
}

variable "key_path" {
  default = "terr_env.pub"
}

variable "instance_name" {
  default = "Default"
  type = string
}