# Creating a Docker Image ubuntu with the latest as the Tag.
resource "docker_image" "ubuntu" {
  name = "ubuntu:latest"
}

# Creating a Docker Container using the latest ubuntu image.
resource "docker_container" "webserver" {
  image             = docker_image.ubuntu.latest
  name              = "terraform-docker-test"
  must_run          = true
  publish_all_ports = true
  command = [
    "tail",
    "-f",
    "/dev/null"
  ]
}