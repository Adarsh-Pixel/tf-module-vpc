output "VPC_ID" {
    value = aws_vpc.main.id
}

output "VPC_CIDR" {
    value = aws_vpc.main.cidr_block
}

output "PUBLIC_SUBNET_CIDR" {
    value = aws_subnet.public_subnet.*.cidr_block
}

output "PRIVATE_SUBNET_CIDR" {
    value = aws_subnet.private_subnet.*.cidr_block
}

output "PUBLIC_SUBNET_IDS" {
    value = aws_subnet.public_subnet.*.id
}

output "PRIVATE_SUBNET_IDS" {
    value = aws_subnet.private_subnet.*.id
}

output "DEFAULT_VPC_ID" {
    value = var.DEFAULT_VPC_ID
}

output "DEFAULT_VPC_CIDR" {
    value = var.DEFAULT_VPC_CIDR
}

output "PUBLIC_HOSTED_ZONE_ID" {
    value = var.PUBLIC_HOSTED_ZONE_ID
}

output "PUBLIC_HOSTED_ZONE_NAME" {
    value = var.PUBLIC_HOSTED_ZONE_NAME
}
