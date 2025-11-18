# Shell Basics - 1 Hour Learning Content

## Topics Covered
- Introduction to Shell
- What is Linux Shell
- Types of Shell
- Check Shell Type
- What is Shell Scripting
- Creating the First Script
- Shebang Line
- How to Run a Shell Script
- Comments in Shell Scripts

## Hands-on Tasks
- Create and execute a basic script
- Practice shebang usage
- Execute script with bash, sh, and direct run
- Add comments inside scripts

---

## 1-Hour Structured Content

### 0–5 min — Introduction to Shell
- Shell as a command interpreter
- Difference between kernel and shell
- Why DevOps engineers must know shell

### 5–10 min — What is Linux Shell
- Features of a shell: command execution, variables, pipes, scripts
- Examples: bash, sh, zsh, ksh

### 10–15 min — Types of Shell
- Bourne shell (sh)
- Bourne Again shell (bash)
- Korn shell (ksh)
- Z shell (zsh)
- Fish shell

### 15–18 min — Check Shell Type
Commands:
```
echo $SHELL
ps -p $$
cat /etc/shells
```

### 18–25 min — What is Shell Scripting
- Scripts automate tasks: backups, monitoring, deployments
- Shell executes commands line-by-line

### 25–30 min — Creating the First Script
```
nano first.sh
echo "Hello World"
chmod +x first.sh
```

### 30–35 min — Shebang Line
Examples:
```
#!/bin/bash
#!/bin/sh
#!/usr/bin/env bash
```

### 35–40 min — How to Run a Script
```
./script.sh
bash script.sh
sh script.sh
```

### 40–44 min — Comments in Shell Scripts
```
# This is a comment
# Author: Imran
# Purpose: Demo script
```

### 44–60 min — Hands-on Labs
#### Lab 1: Basic Script
```
#!/bin/bash
echo "Script executed successfully"
```
#### Lab 2: Shebang Difference
```
#!/bin/bash
#!/bin/sh
```
#### Lab 3: Run via bash/sh/direct
#### Lab 4: Add Comments
```
#!/bin/bash
# Shows date & user
echo "Today's date is: $(date)"
echo "Current user: $(whoami)"
```
