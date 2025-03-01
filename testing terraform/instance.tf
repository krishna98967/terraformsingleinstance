resource "aws_instance" "Ec2" {
    ami = var.amis
    availability_zone = "us-east-1a"
    instance_type = "t2.micro"
    key_name = "${var.aws_key_name}"
    vpc_security_group_ids =  ["${aws_security_group.allow_all.id}"]
    subnet_id = aws_subnet.public_subnet1.id
    associate_public_ip_address = true
    source_dest_check = false


    tags = {
        Name = "testingsever"
    }
}