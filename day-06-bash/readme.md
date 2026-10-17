cat > day-06-bash/README.md <<'EOF'
# Day 6 — Bash Scripting

## Topics Practised
- Displaying output with `echo`
- Creating and using variables
- Accepting user input with `read -p`
- Conditional logic with `if`, `else`, and `fi`
- Checking for regular files with `-f`

## Scripts
- `hello.sh` — prints messages, uses variables, accepts input, and demonstrates a condition.
- `file-check.sh` — checks whether a named file exists as a regular file.
- `check-config.sh` — demonstrates a basic configuration-file presence check.

## Key Bash Concepts
- `-ge` means greater than or equal to.
- `-f` checks whether a path is an existing regular file.
- Quoting `"$filename"` keeps filenames containing spaces together as one argument.

## Practice
Tested the scripts with existing and missing filenames, and with marks above and below the pass threshold.
EOF