# creates Internet Gateway

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "roboshop-${var.ENV}-igw"
  }
}

# Creates Elastic IP address which are used by the NAT gateway. Ensure EIP is provisioned first and then NAT.
resource "aws_eip" "ngw_ip" {
  vpc     = true

  tags = {
    Name = "roboshop-${var.ENG}-ngw-eip"
  }
}

# Creates NAT gateway and will be attached to public subnet

resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.ngw_ip.id
  subnet_id     = aws_subnet.private_subnet.*.id[0]

  tags = {
    Name = "gw NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.example]
}