###yandex_compute_image vars

variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "ubuntu release name"
}

variable "vm_db_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "ubuntu release name"
}

###yandex_compute_instance vars

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "platform id"
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "platform id"
}

###resources vars

variable "vm_web_resources" {
  type        = map(number)
  default     = {
    cores         = 2
    memory        = 1
    core_fraction = 5
  }
}

