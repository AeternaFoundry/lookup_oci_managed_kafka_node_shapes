output "managed_kafka_node_shapes_lookup_id" {
  description = "Map of id values across all managed_kafka_node_shapes_lookup, keyed the same as var.managed_kafka_node_shapes_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_managed_kafka_node_shapes.managed_kafka_node_shapes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "managed_kafka_node_shapes_lookup_compartment_id" {
  description = "Map of compartment_id values across all managed_kafka_node_shapes_lookup, keyed the same as var.managed_kafka_node_shapes_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_managed_kafka_node_shapes.managed_kafka_node_shapes_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "managed_kafka_node_shapes_lookup_filter" {
  description = "Map of filter values across all managed_kafka_node_shapes_lookup, keyed the same as var.managed_kafka_node_shapes_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_managed_kafka_node_shapes.managed_kafka_node_shapes_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "managed_kafka_node_shapes_lookup_name" {
  description = "Map of name values across all managed_kafka_node_shapes_lookup, keyed the same as var.managed_kafka_node_shapes_lookup except keys with no name are omitted"
  value       = { for k, v in data.oci_managed_kafka_node_shapes.managed_kafka_node_shapes_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "managed_kafka_node_shapes_lookup_node_shape_collection" {
  description = "Map of node_shape_collection values across all managed_kafka_node_shapes_lookup, keyed the same as var.managed_kafka_node_shapes_lookup except keys with no node_shape_collection are omitted"
  value       = { for k, v in data.oci_managed_kafka_node_shapes.managed_kafka_node_shapes_lookup : k => v.node_shape_collection if v.node_shape_collection != null && length(v.node_shape_collection) > 0 }
}

