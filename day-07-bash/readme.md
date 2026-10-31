# Day 7 — Bash Loops and File-Check Automation

## Learning Objectives

- Understand Bash `for` loops.
- Repeat commands for multiple filenames.
- Use `if`, `then`, `else`, and `fi`.
- Check regular files using `-f`.
- Check directories using `-d`.
- Check file readability using `-r`.
- Combine conditions using `&&` and `||`.
- Build simple file-check automation scripts.

## 1. The for Loop

A `for` loop repeats commands for each item in a list.

```bash
for file in config.txt backup.txt nginx.conf
do
    echo "$file"
done
```

The loop processes three filenames, so the loop body executes three times.

Each iteration assigns one filename to the variable `file`.

## 2. File Existence Check

```bash
if [ -f "$file" ]
then
    echo "$file exists"
else
    echo "$file is missing"
fi
```

- `if` evaluates a condition.
- `-f` checks whether the path is a regular file.
- `then` runs when the condition is true.
- `else` runs when the condition is false.
- `fi` closes the conditional statement.

## 3. Directory and Readability Checks

### Regular file check

```bash
[ -f config.txt ]
```

Checks whether the path exists as a regular file.

### Directory check

```bash
[ -d logs ]
```

Checks whether the path exists as a directory.

### Readability check

```bash
[ -r config.txt ]
```

Checks whether the file is readable by the current user.

## 4. Combining Conditions

The `&&` operator means AND. Both conditions must be true.

```bash
if [ -f config.txt ] && [ -r config.txt ]
then
    echo "File exists and is readable"
else
    echo "File is missing or not readable"
fi
```

The `||` operator means OR. At least one condition must be true.

```bash
if [ -f config.txt ] || [ -f backup.txt ]
then
    echo "At least one file exists"
fi
```

## 5. Important Bash Syntax

- `$file` accesses the value stored in the variable.
- `"$file"` quotes the variable value to handle spaces safely.
- `echo` displays text.
- `do` begins the loop body.
- `done` ends the loop.
- `&&` requires both conditions to be true.
- `||` requires at least one condition to be true.

## 6. Practical Scripts

### file-check-loop.sh

Checks whether multiple files exist and are readable.

### check-multiple-files.sh

Uses a `for` loop and `-f` to check multiple filenames.

### final-config-check.sh

Combines:
- `for` loops
- `if-else` conditions
- `-f` regular file checks
- `-r` readability checks
- `&&` logical operator

This script checks application configuration files before proceeding with deployment-related tasks.

## 7. How to Run a Script

Navigate to the Day 7 directory:

```bash
cd /mnt/c/Devops-scratch/day-07-bash
```

Run a script using:

```bash
bash file-check-loop.sh
```

Run the final practical script:

```bash
bash final-config-check.sh
```

## 8. Testing and Practice

Test files were created to understand the difference between existing and missing files.

Additional practice was performed