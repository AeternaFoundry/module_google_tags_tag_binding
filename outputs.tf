output "tags_tag_bindings_id" {
  description = "Map of id values across all tags_tag_bindings, keyed the same as var.tags_tag_bindings except keys with no id are omitted"
  value       = { for k, v in google_tags_tag_binding.tags_tag_bindings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "tags_tag_bindings_deletion_policy" {
  description = "Map of deletion_policy values across all tags_tag_bindings, keyed the same as var.tags_tag_bindings except keys with no deletion_policy are omitted"
  value       = { for k, v in google_tags_tag_binding.tags_tag_bindings : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "tags_tag_bindings_name" {
  description = "Map of name values across all tags_tag_bindings, keyed the same as var.tags_tag_bindings except keys with no name are omitted"
  value       = { for k, v in google_tags_tag_binding.tags_tag_bindings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "tags_tag_bindings_parent" {
  description = "Map of parent values across all tags_tag_bindings, keyed the same as var.tags_tag_bindings except keys with no parent are omitted"
  value       = { for k, v in google_tags_tag_binding.tags_tag_bindings : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "tags_tag_bindings_tag_value" {
  description = "Map of tag_value values across all tags_tag_bindings, keyed the same as var.tags_tag_bindings except keys with no tag_value are omitted"
  value       = { for k, v in google_tags_tag_binding.tags_tag_bindings : k => v.tag_value if v.tag_value != null && length(v.tag_value) > 0 }
}

