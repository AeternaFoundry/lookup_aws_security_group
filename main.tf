data "aws_security_group" "security_group_lookup" {
  for_each = var.security_group_lookup

  name   = each.value.name
  region = each.value.region
  tags   = each.value.tags
  vpc_id = each.value.vpc_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

