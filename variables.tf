variable "endpoints_service_consumers_iam_members" {
  description = <<EOT
Map of endpoints_service_consumers_iam_members, attributes below
Required:
    - consumer_project
    - member
    - role
    - service_name
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    consumer_project = string
    member           = string
    role             = string
    service_name     = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

