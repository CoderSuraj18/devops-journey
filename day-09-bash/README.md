# Day 09 — Advanced Bash Scripting and Deployment Validation

## Overview

Day 09 focuses on advanced Bash scripting techniques used in operational automation. The implementation covers command-line argument handling, input validation, functions, variable scope, function return statuses, and deployment pre-validation.

The practical outcome is a deployment validation script that checks the requested environment and verifies the existence of a configuration file before reporting deployment readiness.

## Repository Structure

```text
day-09-bash/
├── README.md
├── arguments.sh
├── nginx.conf
└── validate-deployment.sh
```

| File | Purpose |
|---|---|
| `arguments.sh` | Demonstrates Bash arguments, functions, variable scope, and return statuses |
| `validate-deployment.sh` | Performs deployment environment and configuration-file validation |
| `nginx.conf` | Empty test configuration file used for file-existence validation |

## 1. Command-Line Argument Handling

The `arguments.sh` script demonstrates how Bash receives arguments when a script is executed.

Example:

```bash
bash arguments.sh production nginx.conf
```

The script uses the following positional parameters:

| Parameter | Description |
|---|---|
| `$0` | Script name |
| `$1` | First argument |
| `$2` | Second argument |
| `$#` | Total number of supplied arguments |

The script requires exactly two arguments. If the required inputs are missing, it displays usage instructions and exits with status `1`.

### Argument validation

```bash
if [ "$#" -ne 2 ]; then
    echo "Usage: bash arguments.sh <environment> <config-file>"
    exit 1
fi
```

## 2. Bash Functions and Variable Scope

The script demonstrates how functions organize reusable operations.

The `show_environment()` function uses a local variable:

```bash
show_environment() {
    local environment="production"
    echo "Inside function: $environment"
}
```

A separate global variable is declared:

```bash
environment="staging"
```

The function displays its local value without modifying the global variable.

Observed output:

```text
Inside function: production
Outside function: staging
```

This demonstrates variable scope and how local variables help prevent unintended changes to global variables.

## 3. Function Return Status and Error Handling

The `check_environment()` function demonstrates returning success or failure.

```bash
check_environment() {
    if [ "$1" = "production" ]; then
        echo "Production environment detected"
        return 0
    else
        echo "Invalid environment"
        return 1
    fi
}
```

The calling script evaluates the function result:

```bash
if check_environment "$1"; then
    echo "Environment validation successful"
else
    echo "Environment validation failed. Stopping script."
    exit 1
fi
```

Key concepts:

- `return 0` indicates function success.
- `return 1` indicates function failure.
- `exit 0` terminates the script successfully.
- `exit 1` terminates the script with failure.
- `$?` retrieves the exit status of the most recently executed command.

## 4. Deployment Environment Validation

The `validate-deployment.sh` script accepts two command-line arguments:

1. Deployment environment.
2. Configuration file path.

Supported environments:

- `development`
- `staging`
- `production`

The script uses a Bash `case` statement to validate the environment.

Invalid environments are rejected, and execution stops with a non-zero exit status.

### Execution

```bash
bash validate-deployment.sh development nginx.conf
bash validate-deployment.sh staging nginx.conf
bash validate-deployment.sh production nginx.conf
```

Invalid environment test:

```bash
bash validate-deployment.sh testing nginx.conf
echo $?
```

Expected exit status:

```text
1
```

## 5. Configuration File Validation

After validating the environment, the script checks whether the supplied configuration path points to an existing regular file.

```bash
if [ ! -f "$config_file" ]; then
    echo "Error: Configuration file not found: $config_file"
    exit 1
fi
```

The `-f` condition checks for a regular file, while `!` reverses the condition.

### Positive validation

Create the test file if it does not already exist:

```bash
touch nginx.conf
```

Execute:

```bash
bash validate-deployment.sh production nginx.conf
echo $?
```

Expected exit status:

```text
0
```

### Negative validation

Execute:

```bash
bash validate-deployment.sh production missing.conf
echo $?
```

Expected exit status:

```text
1
```

## 6. Deployment Readiness Confirmation

When both validations succeed, the script displays a readiness confirmation.

```text
-----------------------------------
All pre-deployment checks passed.
Environment: production
Configuration: nginx.conf
Deployment is ready to proceed.
-----------------------------------
```

The script exits with status `0`.

This confirms that the requested environment is supported and the configuration file exists.

## 7. Validation Results

| Test scenario | Expected result | Status |
|---|---|---|
| Missing command-line arguments | Reject input | Passed |
| One command-line argument | Reject input | Passed |
| Two command-line arguments | Accept input | Passed |
| Production environment | Accept | Passed |
| Development environment | Accept | Passed |
| Staging environment | Accept | Passed |
| Unsupported environment | Reject | Passed |
| Existing configuration file | Accept | Passed |
| Missing configuration file | Reject | Passed |
| Successful function return | Status 0 | Passed |
| Failed function return | Status 1 | Passed |
| Script stops after validation failure | Non-zero exit status | Passed |

## 8. Operational Considerations and Limitations

- Validate required inputs before performing operational tasks.
- Use meaningful variable names to improve script readability.
- Use local variables inside functions when function-specific values are required.
- Return appropriate status codes from reusable functions.
- Stop execution when a critical pre-deployment validation fails.
- Quote variable references to handle paths and values containing spaces.
- Do not assume that file existence confirms configuration correctness.

**Current implementation limitation:** The configuration validation checks only whether the supplied path is an existing regular file. It does not validate Nginx syntax, configuration semantics, permissions, or deployment connectivity.

The readiness message confirms that the implemented pre-deployment checks passed. It does not indicate that an application has actually been deployed.

## 9. Skills Demonstrated

- Advanced Bash scripting
- Command-line argument processing
- Input validation
- Bash functions and variable scope
- Function return statuses
- Exit-code-based error handling
- Conditional execution
- Deployment pre-validation
- Positive and negative test execution

---

**Day 09 outcome:** Implemented and tested a Bash-based deployment pre-validation utility with environment validation, configuration-file existence checks, and controlled failure handling.
