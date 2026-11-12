# Day 08 — Bash Functions

## Objective

Use Bash functions to organize reusable checks for directories and file readability.

## Implemented

The `functions.sh` script defines two functions:

- `check_directory()` uses `-d` to check whether the supplied path is an existing directory.
- `check_readable()` uses `-r` to check whether the supplied path is readable.

The script passes command-line arguments to these functions:

- `$1`: directory path checked by `check_directory()`
- `$2`: file path checked by `check_readable()`

## Execution

From this directory, make the script executable:

```bash
chmod +x functions.sh
```

Run it with an existing directory and file:

```bash
./functions.sh testdir testdir/testfile.txt
```

Expected output when the directory exists and the file is readable:

```text
Directory exists: testdir
File is readable: testdir/testfile.txt
```

Run it with paths that do not exist:

```bash
./functions.sh missing-dir missing-file.txt
```

Expected output:

```text
Directory does not exist: missing-dir
File is not readable or does not exist: missing-file.txt
```

## Operational note

An empty file can still be readable. The `-r` test checks read permission; it does not check whether a file contains data.
