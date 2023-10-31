output "instance-user" {
    value = var.user
}

output "wordpress_vm_public_ip" {
    value = module.wordpress_vm.wordpress_vm_public_ip
}

output "wordpress_vm_internal_ip" {
    value = module.wordpress_vm.wordpress_vm_internal_ip
}

output "db_vm_public_ip" {
    value = module.db_vm.db_vm_public_ip
}

output "db_vm_internal_ip" {
    value = module.db_vm.db_vm_internal_ip
}