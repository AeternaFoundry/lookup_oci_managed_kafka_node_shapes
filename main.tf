data "oci_managed_kafka_node_shapes" "managed_kafka_node_shapes_lookup" {
  for_each = var.managed_kafka_node_shapes_lookup

  compartment_id = each.value.compartment_id
  name           = each.value.name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

