output "security_group_lookup_id" {
  description = "Map of id values across all security_group_lookup, keyed the same as var.security_group_lookup"
  value       = { for k, v in data.aws_security_group.security_group_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_group_lookup_arn" {
  description = "Map of arn values across all security_group_lookup, keyed the same as var.security_group_lookup"
  value       = { for k, v in data.aws_security_group.security_group_lookup : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "security_group_lookup_description" {
  description = "Map of description values across all security_group_lookup, keyed the same as var.security_group_lookup"
  value       = { for k, v in data.aws_security_group.security_group_lookup : k => v.description if v.description != null && length(v.description) > 0 }
}
output "security_group_lookup_filter" {
  description = "Map of filter values across all security_group_lookup, keyed the same as var.security_group_lookup"
  value       = { for k, v in data.aws_security_group.security_group_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "security_group_lookup_name" {
  description = "Map of name values across all security_group_lookup, keyed the same as var.security_group_lookup"
  value       = { for k, v in data.aws_security_group.security_group_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "security_group_lookup_region" {
  description = "Map of region values across all security_group_lookup, keyed the same as var.security_group_lookup"
  value       = { for k, v in data.aws_security_group.security_group_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "security_group_lookup_tags" {
  description = "Map of tags values across all security_group_lookup, keyed the same as var.security_group_lookup"
  value       = { for k, v in data.aws_security_group.security_group_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "security_group_lookup_vpc_id" {
  description = "Map of vpc_id values across all security_group_lookup, keyed the same as var.security_group_lookup"
  value       = { for k, v in data.aws_security_group.security_group_lookup : k => v.vpc_id if v.vpc_id != null && length(v.vpc_id) > 0 }
}

