provider "oci" {
  region = var.region
}

# ----------------------
# Networking (VCN + Subnet)
# ----------------------
resource "oci_core_vcn" "this" {
  cidr_block     = local.vcn_cidr
  display_name   = "${var.project_name}-vcn"
  compartment_id = var.compartment_ocid
}

resource "oci_core_subnet" "private_subnet" {
  cidr_block                 = local.private_subnet_cidr
  display_name               = "${var.project_name}-private-subnet"
  compartment_id             = var.compartment_ocid
  vcn_id                     = oci_core_vcn.this.id
  prohibit_public_ip_on_vnic = true
  dns_label                  = "privsubnet"
}

# ----------------------
# Object Storage Private Endpoint
# ----------------------
resource "oci_objectstorage_private_endpoint" "this" {
  name           = var.pe_name
  compartment_id = var.compartment_ocid
  subnet_id      = oci_core_subnet.private_subnet.id
  prefix         = var.pe_prefix
  namespace      = var.os_namespace

  access_targets {
    namespace      = var.os_namespace
    compartment_id = var.compartment_ocid
    bucket         = "*"
  }

  freeform_tags = {
    Project = var.project_name
  }
}
