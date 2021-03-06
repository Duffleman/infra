resource "digitalocean_kubernetes_cluster" "dflmn" {
  name   = "dflmn"
  region = "lon1"
  # Grab the latest version slug from `doctl kubernetes options versions`
  version       = "1.21.2-do.2"
  auto_upgrade  = true
  surge_upgrade = true

  tags = [
    "dflmn-k8s",
  ]

  node_pool {
    name       = "dflmn-pool"
    size       = "s-1vcpu-2gb"
    node_count = 1
  }
}
