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

variable "vm_db_resources" {
  type        = map(number)
  default     = {
    cores         = 2
    memory        = 2
    core_fraction = 20
  }
}

###metadata vars

variable "vms_metadata" {
  type        = map(any)
  default     = {
    serial-port-enable = 1
    ssh-keys           = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCEWwBkfvKA1QVCjLxnuEUBkarNqtpha7A/PqeqH8+c8tUg4cOn/KEYTszACHs4gLUxqx7HYXXwrFUimJX4zxjFh4RcgqR5ebnDVg3fuH5PmrzmEWxqgnvLSpr+GHbG9GIE3gwcsPiVW3QrgGk3CmtKzDJwQi5H7ig9N0umd+KnOaLnSLEqO7q9WRwUmlFwExftUJYnU+n3JpsDydrLq6uNmQkyl698WciSXxHmOkugmIrJpx8Asty5qdWGPEO0Ak5WDqbZ4jTkX6rk2/eyLGA95aKd3ovtRX9Iliryu2Zy5ui0PuEG9s1T0joLjSE8rmftspf0Yi4qNt7wcPL37Ppr rsa-key-20230305"
  }
}
