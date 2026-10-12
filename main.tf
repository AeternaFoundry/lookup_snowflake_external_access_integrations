data "snowflake_external_access_integrations" "external_access_integrations_lookup" {
  for_each = var.external_access_integrations_lookup

  like          = each.value.like
  with_describe = each.value.with_describe
}

