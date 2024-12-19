###cloud vars


variable "cloud_id" {
  type        = string
  default = "b1gur0eppvpmmuevo40b"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default = "b1glph2kemrv36rl99iv"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "second_zone" {
  type = string
  default = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "dev_B_cidr" {
  type = list(string)
  default = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "second_vpc_name" {
  type = string
  default = "develop_B"
  description = "VPC network & subnet name for zone B"
}

###ssh vars

# variable "vms_ssh_public_root_key" {
 # type        = string
  # default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINRTkcubs21Yg85Fv0neXl+zZOGfzCzmUBlDNbg8HZsb"
  # description = "ssh-keygen -t ed25519"
# }

variable "yc_family" {
  type = string
  default = "ubuntu-2004-lts"
  description = "yandex_compute_image OS distribution"
}

