terraform {
  required_providers {
    mso = {
      source  = "CiscoDevNet/mso"
    }
  }
}

provider "mso" {
  username = ""
  password = ""
  url      = ""
  platform = "nd"
}

module "ndo" {
  source  = "netascode/nac-ndo/mso"
  version = "0.9.1"

  yaml_directories = ["data"]

  deploy_templates          = false
  manage_schemas            = true
  manage_site_connectivity  = false
  manage_sites              = false
  manage_system             = false
  manage_tenants            = true
}