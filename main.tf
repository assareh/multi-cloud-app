//--------------------------------------------------------------------
// Variables
variable "instance_2_gcp_credentials" {}
variable "instance_2_gcp_project" {}


//--------------------------------------------------------------------
// Modules
module "instance_2" {
  source  = "app.terraform.io/multicloud-provisioning-demo/instance/compute"
  version = "0.0.1"

  gcp_credentials = "${var.instance_2_gcp_credentials}"
  gcp_project = "${var.instance_2_gcp_project}"
}

module "instance_1" {
  source  = "app.terraform.io/multicloud-provisioning-demo/instance/ec2"
  version = "0.0.1"
}