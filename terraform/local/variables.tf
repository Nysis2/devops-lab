variable "cluster_name" {
    description = "Nom du cluster kind"
    type        = string
    default     = "devops-lab"
}

variable "worker_count" {
    description = "Nombre de noeuds workers"
    type        = number
    default     = 1
}