variable "label_template" {
  type        = string
  default     = "$AccountName"
  description = "Label template used for the link"
}

variable "sink_identifier" {
  type        = string
  description = "ARN of the OAM sink to link to"
}

variable "resource_types" {
  type        = list(string)
  description = "List of resource types to share with the sink"
}
