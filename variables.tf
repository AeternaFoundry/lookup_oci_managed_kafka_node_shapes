variable "managed_kafka_node_shapes_lookup" {
  description = <<EOT
Map of managed_kafka_node_shapes_lookup, attributes below
Optional:
    - compartment_id
    - name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = optional(string)
    name           = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

