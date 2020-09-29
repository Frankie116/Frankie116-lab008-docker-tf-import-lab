# docker_container.web:
resource "docker_container" "web" {
    name              = "hashicorp-learn"    
    image             = docker_image.nginx.latest  
    

    ports {                       
        external = 8084
        internal = 80
    }                             

    
}                                 
resource "docker_image" "nginx" {
  name         = "nginx:latest"
}
