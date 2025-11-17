# Deploy ACI from ACR

## Steps
1. Deploy:
```
az container create --image <acr>.azurecr.io/app:v1 --registry-login-server ...
```
2. Validate container logs.
