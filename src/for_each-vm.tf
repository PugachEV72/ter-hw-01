data "yandex_compute_image" "ubuntu_db" {
  family = var.vm_db_family
}

resource "yandex_compute_instance" "db" {

  depends_on = [
    yandex_compute_instance.web
  ]

  for_each = local.virtual_machines

  name        = each.value.vm_name
  platform_id = var.vm_db_platform_id
  resources {
    cores         = each.value.vm_cpu
    memory        = each.value.vm_ram
    core_fraction = each.value.vm_core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      size     = each.value.vm_disk_size
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

  metadata = local.ssh_keys_and_serial_port

}
