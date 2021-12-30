variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "compartment_ocid" {}
variable "private_key_path" {}
variable "fingerprint" {}
variable "region" {}
variable "ssh_public_key_path" {}
variable "AD" {}
variable "InstanceShape" {}

provider "oci" {
  tenancy_ocid         = var.tenancy_ocid
  user_ocid            = var.user_ocid
  fingerprint          = var.fingerprint
  private_key_path     = var.private_key_path
  region               = var.region
}