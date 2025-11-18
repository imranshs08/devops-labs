```markdown
# Shell Scripting Learning Plan (5-Week Program)
```
This repository contains a structured **5-week** learning plan for mastering Shell Scripting, followed by a complete real-world automation project related to Azure File Share key rotation, mount updates, and automated notifications.

---

## Weekly Learning Plan

---

# Week 1 – Shell Basics (Nov 18 to Nov 22)

### Topics Covered
- Introduction to Shell  
- What is Linux Shell  
- Types of Shell  
- Check Shell Type  
- What is Shell Scripting  
- Creating the first script  
- Shebang line  
- How to run a shell script  
- Comments in shell scripts  

### Hands-on
- Create and execute a basic script  
- Practice shebang usage  
- Execute script using bash, sh, and direct run  
- Add comments inside scripts  

### Progress Tracker
```

[##############################] 100% Completed

```
```

Covered:
Intro, Shell Types, Shebang, Running Scripts, Comments

Hands-on:
Basic scripts, execute via bash/sh, shebang practice

```

---

# Week 2 – Variables, Arrays, Strings, User Input

### Topics Covered
- Variables  
- Arrays  
- String operations  
- User input  
- Arithmetic operations  

### Hands-on
- Work with positional variables  
- Build array examples  
- Use substring extraction  
- Create a calculator-like script with user input  

---

# Week 3 – Conditions, Loops, Flow Control

### Topics Covered
- If-else  
- Elif  
- Case  
- Logical operators  
- For loop  
- While loop  
- Until loop  
- Looping through files  
- Infinite loops  

### Hands-on
- Menu-driven script using conditions  
- Loop-based file reading  
- Create multiple flow-control mini tasks  

---

# Week 4 – Functions, Logging, Redirection, Scheduling

### Topics Covered
- Functions  
- Passing arguments  
- Bash variables  
- Redirection  
- Using /dev/null  
- Logging  
- Debugging  
- Scheduling with AT  
- Scheduling with Crontab  

### Hands-on
- Create modular scripts using functions  
- Implement log management  
- Test STDERR/STDOUT redirection  
- Automate script execution via cron  

---

# Week 5 – Real-World Use Cases + Pre-Project Foundation

### Topics Covered
- Monitoring RAM  
- Monitoring Disk Usage with email alert  
- Archiving older logs  
- User management automation  

### Hands-on
- Rebuild two existing projects  
- Prepare the base structure for the Final Major Project  

---

# Final Major Project  
## Azure File Share Key Rotation and Mount Update Automation

### Objective
Azure Storage Account access keys rotate every six months. When keys change, Azure File Share mount points using CIFS must be updated and remounted. This project automates:

- Detecting key changes  
- Comparing `df -hT` with `/etc/fstab`  
- Updating mount entry with the new key  
- Executing remount  
- Logging every step  
- Sending email notifications  
- Sending backup files via SFTP  

---

## Features

### Key Change Detection
Compares stored old key with the new key.  
If changed, it triggers mount update; otherwise logs no change.

### Update `/etc/fstab`
Automatically updates the CIFS mount entry with the new Azure File Share key.

### Validate Mount
Checks differences between:
- Mounted filesystems (`df -hT`)
- Expected entries in `/etc/fstab`

### Remount Azure Share
Runs `mount -a` and validates success.  
Reverts to backup on failure.

### Logging
All actions logged into:
- `/var/log/azure-mount-rotation.log`
- Date-wise rotation logs

### Email Notification
Sends a summary email containing:
- New key status  
- Mount validation results  
- Log file location  
- Backup fstab path  

Email can use mailx, SMTP, or API.

### SFTP Backup
Uploads:
- Updated fstab  
- Rotation log  
To a remote SFTP server for backup.

---

## Folder Structure

```

.
├── azure-file-rotation.sh
├── config/
│   ├── storage-account.conf
│   ├── sftp.conf
├── logs/
│   ├── rotation.log
│   └── rotation-YYYYMMDD.log
├── backups/
│   ├── fstab.bak-YYYYMMDD
└── README.md

```

---

## Execution Flow

1. Load storage account name, file share name, and credentials  
2. Read old key  
3. Fetch or input new key  
4. Compare keys  
5. Backup `/etc/fstab`  
6. Update CIFS mount entry  
7. Execute `mount -a`  
8. Validate with `df -hT`  
9. Log outcomes  
10. Email + SFTP transfer  

---

## Usage

Run full rotation:
```

sudo bash azure-file-rotation.sh --rotate-key

```

Dry run:
```

sudo bash azure-file-rotation.sh --dry-run

```

---

## Requirements
- Bash  
- CIFS-utils  
- Azure CLI (optional)  
- Email client or API  
- SFTP credentials  

---

## Expected Outcome
By completing this project, you will gain hands-on expertise in:

- Real-world shell scripting  
- Azure automation  
- Mount point management  
- Key rotation workflows  
- Logging, scheduling, notifications, and backup automation  