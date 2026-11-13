# Day 10 — Bash Automation and Cron Scheduling

## Overview

Day 10 focuses on automating Linux system health checks using Bash scripting and cron scheduling.

The implementation introduces a scheduled monitoring workflow that collects system uptime, filesystem usage, memory information, and host details. Reports are appended to a persistent log file, while cron execution output is captured separately.

A controlled failure-testing script is also used to validate standard error redirection and observe how scheduled jobs behave when a command exits with a non-zero status.

## Repository Structure

```text
day-10-bash/
├── README.md
├── Questions.md
├── system-health.sh
├── cron-failure-test.sh
└── logs/
    ├── system-health.log
    ├── cron-output.log
    └── cron-failure-test.log
```

## 1. System Health Monitoring Automation

The `system-health.sh` script collects operational information from the Linux environment.

### Monitoring components

| Command | Purpose |
|---|---|
| `date` | Records the report generation timestamp |
| `hostname` | Identifies the system |
| `uptime` | Reports uptime and load averages |
| `df -h /` | Checks root filesystem usage |
| `free -h` | Reports memory and swap usage |

### Script reliability

The script uses:

- `set -euo pipefail` for stricter Bash error handling.
- `BASH_SOURCE[0]` to identify the script's directory.
- `mkdir -p` to create the log directory when necessary.
- Quoted variables to handle paths safely.
- Append redirection (`>>`) to preserve previous monitoring reports.

### Execution

```bash
./system-health.sh
```

Expected output:

```text
System health report generated successfully.
Log location: /mnt/c/Devops-scratch/day-10-bash/logs/system-health.log
```

## 2. Automated Log Management

The monitoring script writes reports to:

```text
logs/system-health.log
```

Each execution appends a new report instead of overwriting existing information.

The log includes:

- Report generation date and time
- Hostname
- System uptime
- Root filesystem usage
- Memory and swap information
- Report completion marker

### Log inspection

```bash
cat logs/system-health.log
```

Count the generated reports:

```bash
grep -c "SYSTEM HEALTH REPORT" logs/system-health.log
```

## 3. Cron Service Configuration

Cron is a Linux scheduling service that executes commands automatically at configured times.

The WSL Ubuntu environment was configured to use systemd so the cron service could run as a background service.

### WSL system configuration

The following settings were configured in `/etc/wsl.conf`:

```ini
[boot]
systemd=true

[user]
default=suraj

[network]
hostname=suraj-devops-lab
```

The system hostname was verified as:

```text
suraj-devops-lab
```

### Timezone configuration

The system timezone was configured to Indian Standard Time:

```bash
sudo timedatectl set-timezone Asia/Kolkata
```

Verify the configuration:

```bash
timedatectl
```

### Cron service validation

Check service status:

```bash
sudo systemctl status cron --no-pager
```

The service was verified as active and running.

## 4. Cron Job Scheduling

The health-monitoring script was scheduled to execute every ten minutes.

### Cron configuration

```cron
*/10 * * * * /bin/bash /mnt/c/Devops-scratch/day-10-bash/system-health.sh >> /mnt/c/Devops-scratch/day-10-bash/logs/cron-output.log 2>&1
```

### Schedule breakdown

| Field | Value | Meaning |
|---|---|---|
| Minute | `*/10` | Every ten minutes |
| Hour | `*` | Every hour |
| Day of month | `*` | Every day |
| Month | `*` | Every month |
| Day of week | `*` | Every day of the week |

### Redirection explanation

- `>>` appends command output to the log file.
- `2>&1` redirects standard error to the same destination as standard output.
- `/bin/bash` explicitly invokes the Bash interpreter.
- Absolute paths avoid dependence on cron's working directory.

### Cron management commands

List scheduled jobs:

```bash
crontab -l
```

Edit scheduled jobs:

```bash
crontab -e
```

## 5. Automated Execution Validation

The scheduled monitoring job was verified through its generated output and report logs.

### Cron output log

```bash
cat logs/cron-output.log
```

The log contained successful execution messages from the scheduled health-monitoring script.

### System health report

```bash
cat logs/system-health.log
```

The report contained timestamps, hostname, uptime, disk usage, and memory information.

### Execution journal

Cron execution was independently verified using:

```bash
sudo journalctl -u cron --since "2026-11-13 09:55:00" --no-pager
```

The journal confirmed execution of the health-monitoring job at 10:00 IST.

## 6. Failure Handling and Standard Error Validation

A separate script was created to simulate an operational failure.

### Failure-test script

`cron-failure-test.sh`:

```bash
#!/usr/bin/env bash

echo "ERROR: Simulated cron failure test" >&2
exit 1
```

### Script behaviour

- `>&2` sends the error message to standard error.
- `exit 1` returns a non-zero status to indicate failure.
- The script intentionally simulates a failure; it does not modify system configuration.

### Manual validation

```bash
bash cron-failure-test.sh
echo $?
```

Expected exit status:

```text
1
```

### Scheduled failure-output validation

A temporary one-time cron entry executed the failure-test script with output redirection.

The execution was verified through:

```bash
sudo journalctl -u cron --since "2026-11-13 09:55:00" --no-pager
```

The failure output was captured in:

```text
logs/cron-failure-test.log
```

The temporary scheduled entry was removed after testing. The permanent health-monitoring entry was retained.

**Important:** This exercise verifies error-output capture and a non-zero exit status during manual execution. The scheduled cron log confirms that the failure script was launched, but the exit status was not separately recorded by cron.

## 7. Validation Results

| Validation | Result |
|---|---|
| Bash syntax validation | Passed |
| Manual health-monitoring execution | Passed |
| Automatic log directory creation | Passed |
| Report append behaviour | Passed |
| Cron service status | Active |
| IST timezone configuration | Verified |
| Ten-minute cron schedule | Verified |
| Automatic health-monitoring execution | Passed |
| Standard error redirection | Passed |
| Failure script exit status | `1` |
| Scheduled failure-test execution | Confirmed through journal |
| Temporary cron job cleanup | Completed |

## 8. Operational Considerations and Limitations

### Log retention

The current implementation appends reports indefinitely. Production deployments should introduce log rotation and retention policies.

### Monitoring scope

The current disk check monitors only the root filesystem (`/`). Additional mounted filesystems can be included as a future enhancement.

### Alerting

The current implementation records monitoring information but does not send notifications or generate threshold-based alerts.

### Failure handling

The failure-test script demonstrates error-output capture. It does not implement automatic retries, alerting, or recovery.

### WSL execution dependency

Cron operates only while the WSL environment is running and its cron service is active. This lab does not guarantee monitoring when Windows or WSL is shut down.

### Production security

The scripts were developed in a Windows-mounted WSL directory. Its displayed permissions are influenced by the Windows filesystem mount configuration. Production Linux deployments should use appropriately restricted ownership and permissions.

## 9. Skills Demonstrated

- Bash automation and strict-mode scripting
- Linux system health monitoring
- Cron scheduling and job management
- systemd service administration
- Linux timezone configuration
- Standard output and standard error redirection
- Persistent log management
- Failure simulation and exit-status validation
- Cron execution troubleshooting through system journals
- Scheduled automation verification