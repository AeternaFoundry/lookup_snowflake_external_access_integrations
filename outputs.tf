output "external_access_integrations_lookup_id" {
  description = "Map of id values across all external_access_integrations_lookup, keyed the same as var.external_access_integrations_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_external_access_integrations.external_access_integrations_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "external_access_integrations_lookup_external_access_integrations" {
  description = "Map of external_access_integrations values across all external_access_integrations_lookup, keyed the same as var.external_access_integrations_lookup except keys with no external_access_integrations are omitted"
  value       = { for k, v in data.snowflake_external_access_integrations.external_access_integrations_lookup : k => v.external_access_integrations if v.external_access_integrations != null && length(v.external_access_integrations) > 0 }
}
output "external_access_integrations_lookup_like" {
  description = "Map of like values across all external_access_integrations_lookup, keyed the same as var.external_access_integrations_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_external_access_integrations.external_access_integrations_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "external_access_integrations_lookup_with_describe" {
  description = "Map of with_describe values across all external_access_integrations_lookup, keyed the same as var.external_access_integrations_lookup except keys with no with_describe are omitted"
  value       = { for k, v in data.snowflake_external_access_integrations.external_access_integrations_lookup : k => v.with_describe if v.with_describe != null }
}

