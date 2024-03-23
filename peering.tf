resource "aws_vpc_peering_connection" "peer" {
  peer_vpc_id   = aws_vpc.var.DEFAULT_VPC_ID
  vpc_id        = aws_vpc.main.id
  auto_accept   = true
}