# Azure Policy - Deny Example

## Objective
Prevent creation of Public IP resources.

## Steps
1. Assign policy 'Deny Public IP'.
2. Try creating a VM with public IP → should fail.
3. Validate Activity Log for policy violations.
