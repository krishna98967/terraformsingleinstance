resource "aws_subnet" "public_subnet1" {
    vpc_id = "${aws_vpc.VPC.id}"

    cidr_block = "${var.public_subnet_cidr}"
    availability_zone = "us-east-1a"

    tags ={
        Name = "Public Subnet1"
    }
}

resource "aws_subnet" "private_subnet" {
    vpc_id = "${aws_vpc.VPC.id}"

    cidr_block = "${var.private_subnet_cidr}"
    availability_zone = "us-east-1b"

    tags ={
        Name = "Private Subnet"
    }
}
