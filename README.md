# Terraform-VMware-Generic-vSphere

The Terraform VMware Generic vSphere module that allows you to interact with VMware vSphere, notably [vCenter Server][vmware-vcenter] and [ESXi][vmware-esxi]. This provider can be used to manage a VMware vSphere environment, including virtual machines, host and cluster management, inventory, networking, storage, datastores, content libraries, and more.

## Deploys Virtual Machines to your vSphere environment

Included Features ..:

- Ability to specify VM customization.
- Ability to configure advanced features for a VM.
- Ability to add multiple network cards for the VM
  - ovf_mapping is optional... If not given, then it will auto populate
  - Different network adapter type for different network cards
- Ability to deploy datastore
  - Add extra data disk to the VM.
  - Different datastores for data disks (datastore_id).
  - Different scsi_controllers per disk, including data disks.

### Pre-requisites

1. Install [Pre-commit hooks for Terraform](https://confluence.eng.vmware.com/display/VELOOPS/Pre-commit+hooks+for+Terraform)

### MacOSX

```bash
brew install coreutils jq python terraform-docs tflint tfsec checkov terrascan shellcheck gawk
pre-commit run -a  #Launch directly the pre-commit command on the files to check everything is ok
```

### Usage
 Demo Only