provider "aws"{
    version = "˜> 2.0"
    region = "us-eas-1"
}
resource "aes_instance" "dev" {
    count = 3
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
    key_name = "terraform"
    tags = {
        Name = "dev${count.index}"
    }
}














