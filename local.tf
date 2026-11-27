locals {
  resource_name_prefix = "${var.department}-${var.environment}"
  #resource_name_prefix = sap-dev
  project_tags = { #this project_tag is name
    environment = var.environment
    department  = var.department
    project     = "terraform"

  }
}