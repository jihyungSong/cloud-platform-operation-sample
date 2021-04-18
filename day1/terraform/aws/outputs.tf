output "vpc_id" {
    value       =       module.vpc.vpc_id
}

output "vpc_name" {
    value       =       module.vpc.vpc_name
}

output "public_instance_id" {
    value       =       module.ec2.public_instance_id
}

output "public_instance_ip" {
    value       =       module.ec2.public_instance_ip
}
