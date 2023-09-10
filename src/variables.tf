###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCEWwBkfvKA1QVCjLxnuEUBkarNqtpha7A/PqeqH8+c8tUg4cOn/KEYTszACHs4gLUxqx7HYXXwrFUimJX4zxjFh4RcgqR5ebnDVg3fuH5PmrzmEWxqgnvLSpr+GHbG9GIE3gwcsPiVW3QrgGk3CmtKzDJwQi5H7ig9N0umd+KnOaLnSLEqO7q9WRwUmlFwExftUJYnU+n3JpsDydrLq6uNmQkyl698WciSXxHmOkugmIrJpx8Asty5qdWGPEO0Ak5WDqbZ4jTkX6rk2/eyLGA95aKd3ovtRX9Iliryu2Zy5ui0PuEG9s1T0joLjSE8rmftspf0Yi4qNt7wcPL37Ppr rsa-key-20230305"
  description = "ssh-keygen -t ed25519"
}

###vm_name vars

variable "edu" {
  type        = string
  default     = "netology"
}

variable "env" {
  type        = string
  default     = "develop"
}

variable "plt" {
  type        = string
  default     = "platform"
}

###yandex_compute_image vars

#variable "vm_web_family" {
#  type        = string
#  default     = "ubuntu-2004-lts"
#  description = "ubuntu release name"
#}

###yandex_compute_instance vars

#variable "vm_web_name" {
#  type        = string
#  default     = "netology-develop-platform-web"
#  description = "vm name"
#}

#variable "vm_web_platform_id" {
#  type        = string
#  default     = "standard-v1"
#  description = "platform id"
#}

#variable "vm_web_cores" {
#  type        = number
#  default     = 2
#  description = "cores"
#}

#variable "vm_web_memory" {
#  type        = number
#  default     = 1
#  description = "memory"
#}

#variable "vm_web_core_fraction" {
#  type        = number
#  default     = 5
#  description = "core fraction"
#}
