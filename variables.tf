### Variables ###
variable "ocean_id" {
  type        = string
  description = "The ID of the Ocean Cluster"
}
variable "node_pool_name" {
  type        = string
  description = "The node pool you wish to use in your Launch Spec."
}
variable "name" {
  type        = string
  description = "The launch specification name"
  default     = null
}
variable "cluster_name" {
  type        = string
  description = "Name of GKE Cluster"
}
variable "source_image" {
  type        = string
  default     = null
  description = "Image URL"
}
variable "taints" {
  type        = list(object({
    key       = string
    value     = string
    effect    = string
  }))
  default = null
  description = "Optionally adds labels to instances launched in an Ocean cluster."
}
variable "labels" {
  type        = list(object({
    key       = string
    value     = string
  }))
  default     = null
  description = "Optionally adds labels to instances launched in an Ocean cluster."
}
variable "restrict_scale_down" {
  type        = bool
  default     = false
  description = "Boolean. When set to true, VNG nodes will be treated as if all pods running have the restrict-scale-down label. Therefore, Ocean will not scale nodes down unless empty."
}
variable "root_volume_tyoe" {
  type        = string
  description = "Root volume disk type. Valid values: pd-standard, pd-ssd"
  default     = null
}
variable "root_volume_size" {
  type        = number
  description = "Root volume size (in GB)."
  default     = null
}
variable "instance_types" {
  type        = list(string)
  description = "List of supported machine types for the Launch Spec."
  default     = null
}
variable "auto_headroom_percentage" {
  type        = number
  description = "Set automatic headroom per launch spec. Number between 0-200 to control the headroom % of the specific Virtual Node Group. Effective when cluster.autoScaler.headroom.automatic.is_enabled = true is set on the Ocean cluster."
  default     = null
}
variable "num_of_units" {
  type        = number
  default     = null
  description = "The number of units to retain as headroom, where each unit has the defined headroom CPU, memory and GPU."
}
variable "cpu_per_unit" {
  type        = number
  default     = null
  description = "Optionally configure the number of CPUs to allocate for each headroom unit. CPUs are denoted in millicores, where 1000 millicores = 1 vCPU."
}
variable "gpu_per_unit" {
  type        = number
  default     = null
  description = "Optionally configure the number of GPUS to allocate for each headroom unit."
}
variable "memory_per_unit" {
  type        = number
  default     = null
  description = "Optionally configure the amount of memory (MiB) to allocate for each headroom unit."
}
variable "preemptible_percentage" {
  type        = number
  default     = null
  description = "Defines the desired preemptible percentage for this launch specification."
}
variable "enable_integrity_monitoring" {
  type        = bool
  description = "Boolean. Enable the integrity monitoring parameter on the GCP instances."
  default     = null
}
variable "enable_secure_boot" {
  type        = bool
  description = "Boolean. Enable the secure boot parameter on the GCP instances."
  default     = null
}
variable "local_ssd_count" {
  type        = number
  description = "Defines the number of local SSDs to be attached per node for this VNG."
  default     = null
}
variable "max_instance_count" {
  type        = number
  description = "Option to set a maximum number of instances per virtual node group. Can be null. If set, the value must be greater than or equal to 0."
  default     = null
}
variable "min_instance_count" {
  type        = number
  description = "Option to set a minimum number of instances per virtual node group. Can be null. If set, the value must be greater than or equal to 0."
  default     = null
}
variable "service_account" {
  type        = string
  description = "The account used by applications running on the VM to call GCP APIs."
  default     = null
}

## backend_service ##
variable "scheduling_task" {
  type = object({
    is_enabled      = bool
    cron_expression = string
    task_type       = string
    num_of_units    = string
    cpu_per_unit    = string
    gpu_per_unit    = string
    memory_per_unit = string
  })
  default           = null
  description       = "Used to define scheduled tasks such as a manual headroom update."
}