resource "aws_vpc" "cluster_vpc" {
  cidr_block = "10.10.0.0/16"

  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "DPD-PRD-VPC"
  }
}
