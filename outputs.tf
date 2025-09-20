output "private_endpoint_id" {
  description = "OCID of the Object Storage private endpoint"
  value       = oci_objectstorage_private_endpoint.this.id
}

output "private_endpoint_name" {
  description = "Name of the Object Storage private endpoint"
  value       = oci_objectstorage_private_endpoint.this.name
}

output "private_endpoint_namespace" {
  description = "Object Storage namespace for the private endpoint"
  value       = oci_objectstorage_private_endpoint.this.namespace
}

output "private_endpoint_prefix" {
  description = "DNS prefix of the Object Storage private endpoint"
  value       = oci_objectstorage_private_endpoint.this.prefix
}

output "private_endpoint_ip" {
  description = "Private IP address of the Object Storage private endpoint"
  value       = oci_objectstorage_private_endpoint.this.private_endpoint_ip
}

