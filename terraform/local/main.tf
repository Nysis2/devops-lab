resource "kind_cluster" "this" {
  name           = var.cluster_name
  wait_for_ready = true

  kind_config {
    kind = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"

    node {
        role = "control-plane"

        extra_port_mappings {
            container_port = 30080
            host_port = 8080
        }
    }

    dynamic "node" {
        for_each = range(var.worker_count)
        content {
            role = "worker"
        }
    }
  }
}