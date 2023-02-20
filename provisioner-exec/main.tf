variable "hosts" {
  default = {
    "127.0.0.1"     = "localhost"
    "192.168.0.168" = "gitlab.ci"
    "192.168.0.170" = "prometheus.test"
  }
}
resource "null_resource" "hosts" {
    for_each = var.hosts
    provisioner "local-exec" {
      command = "echo '${each.key} ${each.value} >> hosts.txt"
    }

}