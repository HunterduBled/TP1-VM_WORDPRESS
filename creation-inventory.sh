# Récupération des adresses IP des VMs depuis les sorties Terraform
cd ./terraform
wordpress_vm_public_ip=$(terraform output wordpress_vm_public_ip  | sed 's/"//g')
wordpress_vm_internal_ip=$(terraform output wordpress_vm_internal_ip  | sed 's/"//g')
db_vm_public_ip=$(terraform output db_vm_public_ip  | sed 's/"//g')
db_vm_internal_ip=$(terraform output db_vm_internal_ip  | sed 's/"//g')
user=$(terraform output instance-user | sed 's/"//g')

# Génération de l'inventaire avec les adresses IP
echo "[wordpress-vm]"
echo $wordpress_vm_public_ip ansible_user=$user

echo "[db-vm]"
echo $db_vm_public_ip ansible_user=$user