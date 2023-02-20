resource "null_resource" "web" {
  provisioner "local-exec" {
    command = "echo 'bonjour ' >> ./file.txt"
  }
}
