variable "ssh_host" {}
variable "ssh_key"  {}
variable "ssh_user" {}

resource "null_resource" "website" {

  provisioner "remote-exec"  {
    connection  {
      type = "ssh"
      host = var.ssh_host
      user = var.ssh_user
      private_key = file(var.ssh_key)
    }
    inline = [
      "sudo apt-get update",
      "sudo apt-get install apache2",
      "echo 'Hello terraformers ' >> /var/www/html/idex.html"

    ]
  }
}

output "user" {
  value = var.ssh_user
}
