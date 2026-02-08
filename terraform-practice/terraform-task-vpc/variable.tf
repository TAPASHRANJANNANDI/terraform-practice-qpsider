variable "tapash_region" {
  default = "ap-south-1"
}
variable "tapash_vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "tapash_vpc_name" {
  default = "tapash-vpc-1234567890"
}
variable "tapash_public_subnet_1_cidr" {
    default = "10.0.1.0/24"
}
variable "tapash_public_subnet_2_cidr" {
    default = "10.0.2.0/24"
}
variable "tapash_private_subnet_1_cidr" {
    default = "10.0.3.0/24"
}
variable "tapash_private_subnet_2_cidr" {
    default = "10.0.4.0/24"
}
variable "tapash_public_subnet_1_name" {
    default = "tapash-public-subnet-1"
}
variable "tapash_public_subnet_2_name" {
    default = "tapash-public-subnet-2"
}
variable "tapash_private_subnet_1_name" {
    default = "tapash-private-subnet-1"
}
variable "tapash_private_subnet_2_name" {
    default = "tapash-private-subnet-2"
}
variable "tapash_public_subnet_region_1" {
    default = "ap-south-1a"
}

variable "tapash_public_subnet_region_2" {
    default = "ap-south-1b"
}
variable "tapash_private_subnet_region_1" {
    default = "ap-south-1a"
}
variable "tapash_private_subnet_region_2" {
    default = "ap-south-1b"
}
variable "tapash_igw_name" {
    default = "tapash-igw"
}
variable "tapash_public_route_table_name" {
    default = "tapash-public-route-table"
}
variable "tapash_private_route_table_1_name" {
    default = "tapash-private-route-table-1"
}
variable "tapash_public_route_table_2_name" {
    default = "tapash-public-route-table-2"
}
variable "tapash_public_route_cidr" {
    default = "10.0.0.0/8"   
}