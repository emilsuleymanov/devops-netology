terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "terraform-emil"
    region     = "ru-central1"
    key        = "./status.tfstate"
    access_key = "YCAJEKv61AvXyrbwQ2QTHg-ip"
    secret_key = "YCOFyJc1YUHO2_OoGrviYrMy7lFZDYtvP34mPf91"


    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  token     = "AQAAAAAHd74HAATuwUtZiIJtlEcBp7EN9amu3Ok"
  cloud_id  = "b1gva44kk6kvqb12gfba"
  folder_id = "b1grh7mc6s7p6tjvi9t4"
  zone      = "ru-central1-a"
}
