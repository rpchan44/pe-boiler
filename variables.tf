variable "region" {
  description = "OCI region (e.g. ap-singapore-1)"
  type        = string
}

variable "compartment_ocid" {
  description = "Compartment OCID where resources will be created"
  type        = string
}

variable "project_name" {
  description = "Prefix for naming resources"
  type        = string
  default     = "os-private-endpoint"
}

variable "pe_name" {
  description = "Name of the Object Storage private endpoint"
  type        = string
}

variable "pe_prefix" {
  description = "DNS prefix for the Object Storage private endpoint"
  type        = string
}

variable "os_namespace" {
  description = "Object Storage namespace (check from OCI console under Object Storage settings)"
  type        = string
}
