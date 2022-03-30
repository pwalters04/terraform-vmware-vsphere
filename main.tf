module "generic_vsphere"{
  source            = "Terraform-VMWare-Modules/vm/vsphere"
  version           = "3.4.1"
  dc                = var.dataceneter
  vmrp              = var.cluster_name #Works with ESXi/Resources
  vmfolder          = var.vmfloder
  datastore_cluster = var.datastore_cluster #You can use datastore variable instead
  vmtemp            = var.template_name
  instances         = 2
  vmname            = var.vm_name
  vmnameformat      = "%03d" #To use three decimal with leading zero vmnames will be AdvancedVM001,AdvancedVM002
  domain            = var.domain_name
  network = {
    "Name of the Port Group in vSphere" = var.port_group # To use DHCP create Empty list ["",""]; You can also use a CIDR annotation;
    "Second Network Card"               = ["", ""]
  }
  ipv4submask  = ["24", "8"]
  network_type = ["vmxnet3", "vmxnet3"]
  tags = {
    "terraform-test-category" = "terraform-test-tag"
  }
  data_disk = {
    disk1 = {
      size_gb                   = 30,
      thin_provisioned          = false,
      data_disk_scsi_controller = 0,
    },
    disk2 = {
      size_gb                   = 70,
      thin_provisioned          = true,
      data_disk_scsi_controller = 1,
      datastore_id              = "datastore-90679"
    }
  }
  scsi_bus_sharing = "physicalSharing" // The modes are physicalSharing, virtualSharing, and noSharing
  scsi_type        = "lsilogic"        // Other acceptable value "pvscsi"
  scsi_controller  = 0                 // This will assign OS disk to controller 0
  dns_server_list  = ["192.168.0.2", "192.168.0.1"]
  enable_disk_uuid = true
  vmgateway        = "192.168.0.1"
  auto_logon       = true
  run_once         = ["command01", "command02"] // You can also run Powershell commands
  orgname          = "Terraform-Module"
  workgroup        = "Module-Test"
  is_windows_image = true
  firmware         = "efi"
  local_adminpass  = "Password@Strong"
}
