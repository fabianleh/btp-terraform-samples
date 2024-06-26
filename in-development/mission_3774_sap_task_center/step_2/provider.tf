###
# Define the required providers for this module
###
terraform {
  required_providers {
    btp = {
      source = "sap/btp"
    }
    cloudfoundry = {
      source = "SAP/cloudfoundry"
      version = "0.2.1-beta"
    }
  }
}
provider "btp" {
  globalaccount  = var.globalaccount
  cli_server_url = var.cli_server_url
#  password       = var.password
}
provider "cloudfoundry" {
  api_url  = "https://api.cf.us10.hana.ondemand.com/"
}
