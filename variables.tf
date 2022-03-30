

variable "cluster_name" {
  description = "The Cluster Name"
  type = string
}

variable "vmfloder" {
  description = "The virtual machine folder"
  type = string
}

variable "datastore_cluster" {
  description = "The Datastore Name"
  type = string
}

variable "template_name" {
  description = "Template Name"
  type = string
}

variable "port_group" {
  description = "Port Group IP addresses"
  type = list(string)
}

variable "vm_name" {
  description = "virtual machine name"
}
variable "domain_name" {
  description = "The Domain Name (region)"
}

variable "dataceneter" {
  description = "The Datacenter name"
}

