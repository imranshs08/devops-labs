# Custom Role (JSON)

## Objective
Create a custom role that allows VM restart only.

## Steps
1. Navigate to Entra ID → Roles → New Custom Role.
2. Use JSON:
```
{
 "properties": {
   "roleName": "VM-Restart-Only",
   "permissions": [
      {"actions": ["Microsoft.Compute/virtualMachines/restart/action"]}
   ],
   "assignableScopes": ["/subscriptions/<subscription-id>"]
 }
}
```
3. Assign to test user.
4. Validate user can restart VM only.
