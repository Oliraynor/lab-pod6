terraform {
  required_providers {
    aci = {
      source  = "CiscoDevNet/aci"
    }
  }
}

provider "aci" {
  username   = "<Username>"
  password   = "<Password>"
  url        = "<URL>"
}

module "aci" {
  source  = "netascode/nac-aci/aci"
  version = "0.9.1"

  yaml_directories = ["data"]

  manage_access_policies    = true
  manage_fabric_policies    = false
  manage_pod_policies       = false
  manage_node_policies      = false
  manage_interface_policies = true
  manage_tenants            = true
}

