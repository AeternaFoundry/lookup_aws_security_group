variable "security_group_lookup" {
  description = <<EOT
Map of security_group_lookup, attributes below
Optional:
    - name
    - region
    - tags
    - vpc_id
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    name   = optional(string)
    region = optional(string)
    tags   = optional(map(string))
    vpc_id = optional(string)
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
}

