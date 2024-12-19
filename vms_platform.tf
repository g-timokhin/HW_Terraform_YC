# VM vars


variable "web_yc_plat_name" {
  type = string
  default = "netology-develop-platform-web"
  description = "yandex_compute_instance platform name for web"
}

variable "web_yc_plat_hostname" {
  type = string
  default = "netology-develop-platform-web"
  description = "yandex_compute_instance platform hostname for web"
}

variable "web_yc_plat_id" {
  type = string
  default = "standard-v3"
  description = "yandex_compute_instance platform id for web"
}

variable "db_yc_plat_name" {
  type = string
  default = "netology-develop-platform-db"
  description = "yandex_compute_instance platform name for db"
}


variable "db_yc_plat_id" {
  type = string
  default = "standard-v3"
  description = "yandex_compute_instance platform id for db"
}

variable "vms_resources" {
  type = map(object({
    cores = number
    memory = number
    core_fraction = number
  }))
  default = {
    web = {
      cores = 2
      memory = 1
      core_fraction = 20
    }
    db = {
      cores = 2
      memory = 2
      core_fraction = 20
    }
  }
}

variable "metadata" {
  type = map(object({
    serial-port-enable = number
    ssh-keys           = string
  }))
  default = {
      "default" = {
        serial-port-enable = 1
        ssh-keys           = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINRTkcubs21Yg85Fv0neXl+zZOGfzCzmUBlDNbg8HZsb"
      }
  }
}