resource "google_compute_network_endpoint_group" "neg" {
  name         = "my-lb-neg"
  network      = google_compute_network.default.id
  subnetwork   = google_compute_subnetwork.default.id
  default_port = "90"
  zone         = "us-central1-a"
}
resource "google_compute_network_endpoint_group" "neg_00" {
  name         = "my-lb-neg"
  network      = google_compute_network.default.id
  subnetwork   = google_compute_subnetwork.default.id
  default_port = "90"
  zone         = "northamerica-northeast1-a"
}
resource "google_compute_network" "default.self_link" {
  name                    = "neg-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "default" {
  name          = "neg-subnetwork"
  ip_cidr_range = "10.0.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.default.id
}
