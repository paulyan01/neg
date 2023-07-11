resource "google_compute_region_network_endpoint_group" "neg" {
  name                  = var.name
  network_endpoint_type = "SERVERLESS"
  for_each = toset(var.region)
  region = each.key
  cloud_function {
    function = var.function_name
  }
  project = var.project_id
}
