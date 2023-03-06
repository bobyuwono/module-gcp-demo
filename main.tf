
resource "google_compute_instance" "vm-pagi" {
  machine_type = var.machine_type
  name = "${var.name}-vm"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = ""
      }
      size = 40
    }
  }
  network_interface {
    network = "default"
  }
}
