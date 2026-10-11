variable "tags_tag_bindings" {
  description = <<EOT
Map of tags_tag_bindings, attributes below
Required:
    - parent
    - tag_value
Optional:
    - deletion_policy
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    parent          = string
    tag_value       = string
    deletion_policy = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

