```markdown
# Shell Basics — Interview Prep and Hands-on Labs

## Table of Contents
- Overview
- Detailed Topic Breakdown
- Interview Questions (20)
- Hands-on Practical Tasks (20)

## Overview
This README contains interview-focused questions and hands-on tasks for Day 1 foundational topics in Linux Shell and Shell Scripting. These form the base of almost every DevOps, SRE, Platform Engineering, and Cloud role. Mastering these topics ensures confidence in real-world automation, debugging, and CI/CD tasks.

This material covers:
- What a shell is
- Types of Linux shells
- How to check your current shell
- Shell scripting basics
- Creating and executing scripts
- Shebang usage
- Running scripts correctly
- Adding comments
- Hands-on practical tasks relevant for interviews

---

## Detailed Topic Breakdown

### Introduction to Shell
A shell is a command-line interpreter that provides an interface between the user and the kernel. It allows execution of commands, running tools, and writing scripts to automate tasks.

### What is Linux Shell
Linux shells support:
- Command execution  
- Pipelines  
- Control structures  
- Variables  
- Scripting  
- Automation of system-level operations  

Common shells: `sh`, `bash`, `zsh`, `ksh`, `fish`.

### Types of Shell
- **sh (Bourne Shell)**: Original Unix shell; very POSIX compatible.  
- **bash (Bourne Again Shell)**: Most widely used; powerful scripting capabilities.  
- **zsh**: Interactive, customizable, feature-rich.  
- **ksh**: KornShell; used in legacy enterprise systems.  
- **fish**: Modern, user-friendly shell.

### Checking Shell Type
Commands used:
```

echo $SHELL            # Shows default shell
ps -p $$               # Shows current running process shell
cat /etc/shells        # Shows shells installed on your system

```

### What is Shell Scripting
Shell scripting automates tasks such as:
- System checks  
- Deployments  
- Log analysis  
- Service monitoring  
- File and user management  

Scripts execute commands **line-by-line** using an interpreter.

### Creating the First Script
Steps:
1. Create file  
2. Add script content  
3. Add executable permission  
4. Execute the script  

### Shebang Line
Defines which interpreter executes the script. Examples:
```

#!/bin/bash
#!/bin/sh
#!/usr/bin/env bash

```

### Running a Shell Script
Three ways:
```

./script.sh
bash script.sh
sh script.sh

```
Each method uses different interpreters.

### Comments in Shell Scripts
Used for:
- Documentation  
- Disabled code  
- Author details  
- Purpose of the script  

Syntax:
```

# This is a comment

````

---

## Interview Questions (20)

1. What is a shell, and how is it different from the Linux kernel? Explain their roles with examples.
2. Why is the Linux shell important for DevOps engineers? Mention real automation scenarios.
3. Differentiate between sh, bash, zsh, ksh, and fish. Which one is preferred for scripting and why?
4. How do you check your current shell? Explain differences between `echo $SHELL` and `ps -p $$`.
5. What is shell scripting, and how is it different from running commands manually?
6. Explain the steps to create and execute your first shell script with all required commands.
7. What is the purpose of the shebang (`#!`) line? What happens if it is missing? Provide an example.
8. Compare `./script.sh`, `bash script.sh`, and `sh script.sh`. Which interpreter runs each? Why does output sometimes differ?
9. Why do we use `chmod +x`? Explain execute permission vs read/write permissions and how Linux handles them.
10. What is the purpose of comments in shell scripts? Provide examples of recommended comment structures.
11. How does the shell determine which interpreter to use when running a script directly?
12. Can a script behave differently in bash and sh? Provide an example involving arrays or bash-only syntax.
13. What are interactive vs non-interactive shells? Provide use cases for each.
14. What is the difference between login and non-login shells? Where are their configs loaded from?
15. Why might `./script.sh` fail with “Permission denied” while `bash script.sh` works? Provide detailed reasoning.
16. Explain the internal flow of script execution from shebang to interpreter to command parsing.
17. How do you debug shell scripts? Explain `set -x`, `set -e`, and `bash -x` with use cases.
18. Explain why CI/CD pipelines may fail because of wrong shebang or interpreter mismatch. Provide practical examples.
19. Given the script below, explain the output:
    ```
    #!/bin/sh
    echo "Shell: $0"
    echo "User: $(whoami)"
    ```
    Explain differences when run with `bash`, `sh`, or direct execution.
20. List common mistakes beginners make in shell scripting (missing shebang, CRLF issues, permissions, wrong interpreter, syntax errors).

---

## Hands-on Practical Tasks (20)

1. Create `hello.sh`, print a message, make it executable, and run it using `./hello.sh`, `bash hello.sh`, and `sh hello.sh`. Explain the difference in all three executions.
2. Add comments and script metadata (author, date, purpose) to a script and ensure it follows best documentation practices.
3. Write a script to print the current running shell and the user's default login shell using `$SHELL` and `ps`.
4. Create a script using bash shebang. Run it using bash, sh, and direct execution; observe behavioral changes.
5. Create a script without a shebang. Run it using all three methods and analyze which interpreter runs the script.
6. Create two scripts comparing `#!/bin/bash` and `#!/usr/bin/env bash`. Explain why env-based shebang is more portable.
7. Diagnose and fix a “Permission denied” error by using `chmod +x`. Provide explanation in comments.
8. Create a script that prints date and current user. Test in different shells for differences.
9. Write a script that checks if `/etc/passwd` exists. Use both `-f` and `-e` for comparison.
10. Write a script using bash arrays. Demonstrate how it fails in sh and explain why.
11. Rewrite a messy script by adding shebang, comments, indentation, and meaningful output.
12. Write a script that prints script name and arguments using `$0`, `$1`, `$2`. Run with sample arguments.
13. Debug a script using `set -x`, `set -e`, and by running with `bash -x`. Document observations.
14. Convert the one-liner `ps -ef | grep ssh` into a structured script with comments and meaningful output.
15. Fix a script with Windows line endings that shows `/bin/bash^M: bad interpreter`. Use `dos2unix`.
16. Create a logging script that appends timestamps to `/tmp/mylog.log` and verify the log file content.
17. Write a script to print hostname, current directory, and number of logged-in users using `who`, `hostname`, `pwd`.
18. Create a script that detects whether it was run directly or via bash by checking `$0`.
19. Write a script that exits with a custom exit code (e.g., `exit 42`) and verify using `$?` after execution.
20. Create a system report script that prints hostname, current user, date/time, uptime, disk usage, and top 3 processes sorted by CPU.

````

---
