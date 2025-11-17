# App Registration & SPN

## Objective
Create App Registration & Service Principal.

## Steps
1. Go to App Registrations → New registration.
2. Create Client Secret.
3. Create SPN:
```
az ad sp create-for-rbac --name "az104-app"
```
4. Test login:
```
az login --service-principal --username <client-id> --password <secret> --tenant <tenant-id>
```