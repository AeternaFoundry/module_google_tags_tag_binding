resource "google_tags_tag_binding" "tags_tag_bindings" {
  for_each = var.tags_tag_bindings

  parent          = each.value.parent
  tag_value       = each.value.tag_value
  deletion_policy = each.value.deletion_policy

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

