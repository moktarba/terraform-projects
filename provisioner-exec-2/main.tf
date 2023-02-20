variable "hosts" {
  default = ["192.168.0.169 gitlab.test","127.0.0.1 localhost gitlab.local","192.168.0.170 prometheus.info"]
}

resource "null_resource" "myhosts"{
    count = "${length(var.hosts)}"
    provisioner "local-exec" {
      command = " echo '${element(var.hosts, count.index)}' >> hosts.txt"
    }
}