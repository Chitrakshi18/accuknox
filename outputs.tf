output "instance_id_us_east_1" {
  value = module.ec2_instance_us_east_1.instance_id
}

output "instance_id_us_east_2" {
  value = module.ec2_instance_us_east_2.instance_id
}

output "public_ip_us_east_1" {
  value = module.ec2_instance_us_east_1.public_ip
}

output "public_ip_us_east_2" {
  value = module.ec2_instance_us_east_2.public_ip
}
