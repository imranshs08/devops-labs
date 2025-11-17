# ACR + Docker Push

## Steps
1. Create ACR:
```
az acr create ...
```
2. Login:
```
az acr login --name <acrname>
```
3. Build & push:
```
docker build -t <acr>.azurecr.io/app:v1 .
docker push <acr>.azurecr.io/app:v1
```