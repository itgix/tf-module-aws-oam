resource "aws_oam_link" "this" {

  label_template  = var.label_template
  sink_identifier = var.sink_identifier
  resource_types  = var.resource_types
}
