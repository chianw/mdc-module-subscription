module "mdc_plans_enable" {
#   source  = "chianw/mdc-defender-plans-azure/azure"
  source = "github.com/chianw/terraform-azure-mdc-defender-plans-azure.git"
  #   version = "2.0.0"
  mdc_plans_list   = var.mdc_plans_list
  subplans         = var.subplans
  enable_telemetry = var.enable_telemetry
}