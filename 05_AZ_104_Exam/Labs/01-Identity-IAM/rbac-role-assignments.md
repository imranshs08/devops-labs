# RBAC Role Assignments

## Objective
Understand role inheritance across Azure scopes.

## Steps
1. Assign Reader role at Subscription.
2. Assign Contributor role at Resource Group.
3. Assign Storage Blob Data Reader at Storage level.
4. Validate with:
```
az role assignment list --assignee <user>
```