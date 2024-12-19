resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}

resource "yandex_vpc_subnet" "develop-B" {
  name = var.second_vpc_name
  zone = var.second_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.dev_B_cidr
}

data "yandex_compute_image" "ubuntu" {
  family = var.yc_family
}
resource "yandex_compute_instance" "platform_web" {
  name        = local.vm_names.web
  hostname = "vm-web-${var.web_yc_plat_hostname}"
  platform_id = var.web_yc_plat_id
  resources {
    cores         = var.vms_resources.web.cores
    memory        = var.vms_resources.web.memory
    core_fraction = var.vms_resources.web.core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

  metadata = {
    serial-port-enable = var.metadata["default"].serial-port-enable
    ssh-keys           = var.metadata["default"].ssh-keys
  }

}

resource "yandex_compute_instance" "platform_db" {
  name        = local.vm_names.db
  hostname = "vm-db-${var.web_yc_plat_hostname}"
  platform_id = var.db_yc_plat_id
  zone = var.second_zone
  resources {
    cores         = var.vms_resources.db.cores
    memory        = var.vms_resources.db.memory
    core_fraction = var.vms_resources.db.core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop-B.id
    nat       = true
  }

  metadata = {
    serial-port-enable = var.metadata["default"].serial-port-enable
    ssh-keys           = var.metadata["default"].ssh-keys
  }

}