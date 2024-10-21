variable "enable_telemetry" {
  default = false
}

variable "mdc_plans_list" {
  type = set(string)
  default = [
    "Arm",
    "CloudPosture",
    "Containers",
    "KeyVaults",
    "StorageAccounts",
    "VirtualMachines"
  ]
  description = "(Optional) Set of all MDC plans"
}

variable "subplans" {
  type = map(string)
  default = {
    "VirtualMachines" : "P2"
    "Arm" : "PerApiCall"
    "KeyVaults" : "PerKeyVault"
    "StorageAccounts" : "DefenderForStorageV2"
  }
  description = "(Optional) A map of resource type pricing subplan, the key is resource type. This variable takes precedence over `var.default_subplan`. Contact your MSFT representative for possible values"
}