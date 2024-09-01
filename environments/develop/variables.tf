variable "GOOGLE_REGION" {
  description = "The Google Cloud region to deploy resources"
  default     = "us-central1"
  type        = string
}

variable "GOOGLE_PROJECT" {
  description = "The Google Cloud project to deploy resources"
  type        = string
}

variable "GKE_NUM_NODES" {
  description = "The number of nodes in the GKE cluster"
  default     = 3
  type        = number
}

variable "GKE_MACHINE_TYPE" {
  type        = string
  default     = "g1-micro"
  description = "Machine type"
}

variable "DISK_SIZE_GB" {
  type        = number
  default     = 10
  description = "Disk size in GB"
}
