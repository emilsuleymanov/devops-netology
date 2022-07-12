# ID своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_cloud_id" {
  default = "b1gva44kk6kvqb12gfba"
}

# Folder своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_folder_id" {
  default = "b1gggnre2p09gdph9pe2"
}

# ID образа centos-7
# ID можно узнать с помощью команды yc compute image list
# Или взять из списка существующих https://console.cloud.yandex.ru/folders/b1gr1vdb5g3ktr8v0877/compute/create-instance
# нажав на i и прокрутив вниз до image_id
variable "os_image_id" {
  default = "fd88d14a6790do254kj7"
}

variable "os_user" {
  default = "vagrant"
}

variable "yandex_zone" {
  default = "ru-central1-a"
}
