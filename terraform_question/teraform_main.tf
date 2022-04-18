terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "2.1.0"
     }
    }
  required_version = ">= 0.15.0"
}

variable "secret" {
  type = string
  description = "The secret token"
}

resource "local_file" "createfile" {
   filename = "/run/secret"
   content = var.secret
   file_permission = "0600"
}
