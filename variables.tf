# ---------------------------------------------------------------------------------------------------------------------
# Environmental variables
# You probably want to define these as environmental variables.
# Instructions on that are here: https://github.com/cloud-partners/oci-prerequisites
# ---------------------------------------------------------------------------------------------------------------------

# Required by the OCI Provider
variable "tenancy_ocid" {
}

variable "compartment_ocid" {
}

variable "region" {
}

# Key used to SSH to OCI VMs
variable "ssh_public_key" {
}

# ---------------------------------------------------------------------------------------------------------------------
# Optional variables
# The defaults here will give you a cluster.  You can also modify these.
# ---------------------------------------------------------------------------------------------------------------------

variable "node_shape" {
  description = "Shape for DSE nodes"
  default     = "VM.Standard2.4"
}

variable "node_count" {
  description = "Number of DSE nodes"
  default     = 3
}

variable "dse_version" {
  description = "DSE version"
  default     = "6.7.12"
}

variable "password" {
  description = "Password for DSE user 'cassandra' and OpsCenter user 'admin'"
}

# ---------------------------------------------------------------------------------------------------------------------
# Constants
# You probably don't need to change these.
# ---------------------------------------------------------------------------------------------------------------------

// https://docs.cloud.oracle.com/iaas/images/image/67026570-4527-42f5-b483-75085379e48c/
// Canonical-Ubuntu-16.04-2018.08.15-0
variable "images" {
  type = map(string)

  default = {
    eu-frankfurt-1 = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaa3tl3phbgdyzjba64h2tgunnwzxbxtw4r36u4ttnsn3m77t6jcurq"
    us-ashburn-1   = "ocid1.image.oc1.iad.aaaaaaaa7keb3ok2deynxzsz7k5rondhuc7nt5vw6hf3q5xslyiepnqsi3aq"
    us-phoenix-1   = "ocid1.image.oc1.phx.aaaaaaaafrt5olkogiw2xn74ssu4mjnv7e2wgqkmxwuo4kqihggt74bmgpza"
    uk-london-1    = "ocid1.image.oc1.uk-london-1.aaaaaaaaizzbceqxadaggbchf6yasjralcqdlh2tmgca6ag5b4gvcg4k4rha"
  }
}
