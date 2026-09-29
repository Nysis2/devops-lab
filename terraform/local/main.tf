resource "kind_cluster" "this" {
  name           = "devops-lab"
  wait_for_ready = true
}