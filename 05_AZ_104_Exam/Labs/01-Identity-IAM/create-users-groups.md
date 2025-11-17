# Create Users & Groups

## Objective
Create Azure AD users & groups and validate RBAC roles.

## Steps
1. Go to Azure Portal → Microsoft Entra ID → Users → New User.
2. Create:
   - user-admin
   - user-dev
   - user-restricted
3. Go to Groups → New Group.
4. Create:
   - Admins-Group
   - Developers-Group
5. Add users accordingly.
6. Assign RBAC roles at Resource Group level.
7. Login as each user to test access.

## Validation
- user-admin can create resources.
- user-dev can only view.
