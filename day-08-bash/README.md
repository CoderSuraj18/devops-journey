# Day 8 — Bash Functions

## Objective

Understand Bash functions and create reusable shell scripts
using positional parameters.

## Topics Covered

- Bash function syntax
- Function definition and invocation
- Positional parameters
- `$1`, `$#`, and `$0`
- Local variables using `local`
- File validation using `-f`
- Argument validation
- Reusable script design

## Script

`functions.sh`

The script accepts a file path as an argument and checks
whether the specified regular file exists.

## Execution

```bash
chmod +x functions.sh
./functions.sh README.md
./functions.sh missing.txt