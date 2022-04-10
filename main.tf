provider "aws" {    
    region = "us-eas-1"    
    #source = ["registry.terraform.io/hashicorp/aes"]
}
resource "aes_instance" "dev" {
    count = 3
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
    key_name = "terraform"
    tags = {
        Name = "dev"
    }
}














