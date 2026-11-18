# Day 11 – Python Scripting and DevOps Automation

## Overview

This directory contains Python scripts developed to build practical automation skills for DevOps engineering.

The exercises progress from Python fundamentals to server-health monitoring, log inspection, file validation, and exception handling.

The final implementation combines these concepts into a server-health audit script that reads server records, identifies unhealthy services, maintains health counters, and handles file-access errors.

## Environment

- Operating System: Ubuntu on WSL2
- Language: Python 3
- Execution: Command-line interface
- Working Directory: `day-11-python/`

Verify Python:

```bash
python3 --version
```

Run a script:

```bash
python3 filename.py
```

## Implementation Details

| Script | Purpose |
|---|---|
| `hello.py` | Python execution and initial syntax validation |
| `variables.py` | Variable assignment and value handling |
| `data_types.py` | String, integer, float and Boolean data types |
| `server_check.py` | Conditional logic for CPU usage monitoring |
| `server_monitor.py` | Iteration through server lists |
| `server_health.py` | Dictionary-based server status monitoring |
| `deployment_check.py` | Repeated deployment checks using a while loop |
| `functions.py` | Defining and invoking reusable functions |
| `function_parameters.py` | Passing server names through function parameters |
| `server_status.py` | Returning values and handling multiple return values |
| `read_log.py` | Reading server log data from a file |
| `health_audit.py` | Identifying unhealthy servers through log inspection |
| `error_handling.py` | Handling missing-file errors |
| `file_validation.py` | File-access validation and specific exception handling |
| `server_health_audit.py` | Integrated server-health audit automation |

## Key Implementation Areas

### 1. Python Fundamentals

Implemented variables, data types, conditional statements, and loops.

### 2. Server Monitoring Logic

Used lists and dictionaries to represent server information and evaluate server health.

### 3. Reusable Functions

Implemented functions with parameters, return values, and multiple returned values.

### 4. Log File Processing

Used Python file handling to read server logs and inspect records line by line.

### 5. Exception Handling

Implemented specific exception handling for:

- `FileNotFoundError`
- `PermissionError`

### 6. Integrated Server Health Audit

`server_health_audit.py` combines:

- Reusable functions
- File handling with context managers
- Line-by-line log processing
- Conditional statements
- Healthy and unhealthy server counters
- Alert generation
- Exception handling

## Log Input

The `server.log` file contains the following test records:

```text
web-server: HEALTHY
app-server: UNHEALTHY
db-server: HEALTHY
```

## Validation Results

The integrated audit script was tested against the server log.

Expected results:

```text
Starting Server Health Audit...

ALERT: app-server is UNHEALTHY

Audit Summary:
Healthy Servers: 2
Unhealthy Servers: 1

Server Health Audit Completed.
```

Additional validation performed:

- Confirmed successful log-file reading.
- Confirmed unhealthy-server detection.
- Tested the all-healthy scenario.
- Tested missing-file exception handling.
- Restored the original server log and revalidated the unhealthy-server alert.

## Execution

Run the integrated server-health audit:

```bash
python3 server_health_audit.py
```

Run the log inspection script:

```bash
python3 health_audit.py
```

Run file validation:

```bash
python3 file_validation.py
```

## Skills Demonstrated

- Python scripting
- Conditional logic and iteration
- Functions and return values
- Dictionary and list processing
- File handling
- Log inspection
- Exception handling
- Basic server-health monitoring automation

## Outcome

Developed and validated 15 Python scripts, progressing from fundamental language constructs to an integrated server-health audit implementation.

The exercises establish a foundation for further Python-based DevOps automation, infrastructure operations, and monitoring workflows.
