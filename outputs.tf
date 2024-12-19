output "VMs_info" {
  value = [
    for vm in [yandex_compute_instance.platform_web, yandex_compute_instance.platform_db] :
  {
    instance_name = vm.name
    external_ip = vm.network_interface[0].nat_ip_address
    fqdn = "${vm.hostname}.${var.vpc_name}.cloud_yandex"
  }
  ]
}