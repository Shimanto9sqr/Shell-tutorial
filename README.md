---

# 🐚 Bash Basics & Shell Scripting Cheat Sheet

This document summarizes essential **Linux shell commands** and **Bash scripting syntax** for beginners and intermediate users.

---

## 🔧 Basic Linux Commands

| Command                        | Description                                          |
| ------------------------------ | ---------------------------------------------------- |
| `ls`                           | List files and directories                           |
| `ls -a`                        | Include hidden files (shows hidden `.` files)        |
| `ls -l`                        | Long listing with permissions, owner, size, and date |
| `ll`                           | Lists files in long format (alias to `ls -l`)        |
| `pwd`                          | Print working directory                              |
| `cd [dir]`                     | Change directory                                     |
| `mkdir [dir]`                  | Create new directory                                 |
| `rmdir [dir]`                  | Remove an empty directory                            |
| `rm [file]`                    | Remove file                                          |
| `rm -r [dir]`                  | Remove directory recursively                         |
| `cp source dest`               | Copy file                                            |
| `mv old new`                   | Move or rename file                                  |
| `touch [file]`                 | Create empty file or update timestamp                |
| `cat [file]`                   | View file contents                                   |
| `head [file]`                  | Show first 10 lines                                  |
| `tail [file]`                  | Show last 10 lines                                   |
| `less [file]`                  | View file with scroll                                |
| `echo "text"`                  | Print text to terminal                               |
| `echo $VAR`                    | Print value of a variable                            |
| `clear`                        | Clear terminal screen                                |
| `history`                      | Show command history                                 |
| `man [command]`                | Manual page for command                              |
| `env`                          | List all environment variables                       |
| `export VAR=value`             | Set environment variable                             |
| `whoami`                       | Display current user                                 |
| `uname -a`                     | Show system information                              |
| `df -h`                        | Show disk usage (human-readable)                     |
| `du -sh [dir]`                 | Show size of a directory                             |
| `ps aux`                       | List running processes                               |
| `kill [pid]`                   | Terminate process                                    |
| `grep "text" [file]`           | Search for text pattern                              |
| `find /path -name "file"`      | Find files by name                                   |
| `chmod 755 file`               | Change permissions                                   |
| `chown user:group file`        | Change owner and group                               |
| `sudo [command]`               | Run command as superuser                             |
| `top`                          | Show running processes interactively                 |
| `ping [host]`                  | Test network connectivity                            |
| `curl [url]`                   | Fetch data from URL                                  |
| `wget [url]`                   | Download file from URL                               |
| `tar -xvf file.tar`            | Extract `.tar` file                                  |
| `tar -czvf file.tar.gz folder` | Compress folder into `.tar.gz`                       |
| `zip -r file.zip folder`       | Compress folder into `.zip`                          |
| `unzip file.zip`               | Extract `.zip` file                                  |
| `date`                         | Display system date and time                         |
| `cal`                          | Show calendar                                        |
| `uptime`                       | Show system uptime                                   |
| `exit`                         | Close terminal session                               |

---

## 💡 Bash Scripting Basics

### Variables

```bash
name="John"
echo "Hello $name"
```

### Input & Output

```bash
echo "Enter your name:"
read name
echo "Welcome, $name!"
```

### Arithmetic Operations

```bash
a=5
b=3
echo $((a + b))
echo $((a - b))
echo $((a * b))
echo $((a / b))
```

---

## Loops

### For Loop

```bash
for var in ${array[@]}
do
    echo "Processing $var"
done
```

**Example:**

```bash
for i in {1..5}
do
    echo "Number: $i"
done
```

### While Loop

```bash
count=1
while [ $count -le 5 ]
do
    echo "Count: $count"
    ((count++))
done
```

### Until Loop

```bash
count=1
until [ $count -gt 5 ]
do
    echo "Count: $count"
    ((count++))
done
```

---

## Conditional Statements

### Simple if

```bash
if [ $a -eq $b ]
then
    echo "Equal"
fi
```

### if-else

```bash
if [ $a -eq $b ]
then
    echo "Equal"
else
    echo "Not equal"
fi
```

### if-elif-else

```bash
if [ $a -eq $b ]
then
    echo "Equal"
elif [ $a -gt $b ]
then
    echo "a is greater"
else
    echo "b is greater"
fi
```

---

## Functions

```bash
greet() {
    echo "Hello, $1!"
}

greet "World"
```

---

## Example Script

```bash
#!/bin/bash
echo "Enter your name:"
read name

if [ -z "$name" ]; then
    echo "No name entered!"
else
    echo "Hello, $name!"
fi
```

---

## Useful Tips

* Add `#!/bin/bash` at the top of scripts.
* Make script executable: `chmod +x script.sh`
* Run script: `./script.sh`

---

**Author:** Shimanto
**Purpose:** Quick Bash Reference Sheet
**Last Updated:** 2025

---
