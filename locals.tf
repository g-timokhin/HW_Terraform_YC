locals {
  vm_names = {
    web = "vm-web-${var.web_yc_plat_name}"
    db  = "vm-db-${var.db_yc_plat_name}"
  }
}