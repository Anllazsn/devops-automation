#!/bin/bash

RESOURCE_GROUP="terraform-demo-rg"
SIZE="Standard_D2s_v3"
LOCATION="westus2"
PASSWORD="SenhaAndre328!"
ZONE="2"

criar_vm() {
	local NOME_VM=$1
	echo "Criando VM: $NOME_VM"

	az vm create \
		--resource-group $RESOURCE_GROUP \
		--name $NOME_VM \
		--image Ubuntu2204 \
		--admin-username azureuser \
		--admin-password $PASSWORD \
		--authentication-type password \
		--size $SIZE \
		--location $LOCATION \
		--zone $ZONE \
		--no-wait
}

# Lista de VMs para criar
VMS=(vm01 vm02)

for nome in "${VMS[@]}"; do
	criar_vm $nome
done

echo "Criação em lote iniciada. Aguarde as VMs serem provisionadas."
