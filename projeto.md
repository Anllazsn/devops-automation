Adicionando nova funcionalidade

LOCATION="westus2"
ZONE=2
SIZE="Standard_D2s_v3"

```
az vm create   --resource-group $RG   --name vm01   --image Ubuntu2204   --admin-username azureuser   --admin-password $PASSWORD   --authentication-type password   --location $LOCATION --zone $ZONE --size $SIZE
```
