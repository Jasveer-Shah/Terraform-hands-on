provider "docker" {}

resource "docker_image" "reactapp" {
  name         = "talkjasveer/book-my-trip-reactapp:latest"
  keep_locally = false
}

resource "docker_container" "reactappcontainer" {
  image = docker_image.reactapp.image_id
  name  = "bookmytrip"
  ports {
    internal = 80
    external = 8000
  }
}