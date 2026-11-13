# Day 10 — Bash Automation and Cron: Practical Questions

## Purpose

This question set evaluates practical understanding of Bash-based system monitoring, cron scheduling, log management, failure handling, and operational troubleshooting.

Complete the exercises independently before checking reference material.

## Section 1 — Bash Fundamentals and Script Analysis

1. What is the purpose of the Bash shebang?

2. Explain the following command:

   ```bash
   set -euo pipefail
   ```

3. What is the difference between `$0` and `${BASH_SOURCE[0]}`?

4. Why does the monitoring script use:

   ```bash
   SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
   ```

5. What is the difference between `>` and `>>`?

6. Why should variables containing file paths generally be quoted?

7. What does `mkdir -p` do, and why is it useful in automation?

## Section 2 — Linux System Monitoring

### Practical tasks

1. Execute the system health monitoring script.

2. Identify the system hostname and uptime.

3. Check root filesystem utilization.

4. Display memory and swap usage.

5. Explain the difference between `df -h` and `free -h`.

6. Modify a separate test copy of the monitoring script to check all mounted filesystems instead of only `/`.

7. Identify one possible risk of collecting system monitoring data without log rotation.

### Troubleshooting scenarios

8. The monitoring script runs but the log file is empty. What would you investigate?

9. The disk usage command reports an error. How would you identify the cause?

10. The script works when executed manually but fails when scheduled. What environmental differences might explain this?

## Section 3 — Cron Scheduling

### Knowledge questions

1. What is cron, and what operational problem does it solve?

2. Explain the five scheduling fields in a crontab entry.

3. What does `*/10 * * * *` mean?

4. What is the difference between `crontab -e` and `crontab -l`?

5. Why should scheduled jobs use absolute paths?

6. What is the purpose of explicitly invoking `/bin/bash`?

7. Does cron continue executing jobs when the WSL environment is completely stopped? Explain.

### Practical tasks

8. Configure a test job to execute every five minutes.

9. Configure another test job to execute daily at 02:30.

10. List your current scheduled jobs and explain each field.

11. Remove a temporary scheduled job without disturbing other jobs.

12. Verify that the cron service is active.

13. Inspect cron execution records through `journalctl`.

## Section 4 — Logging and Redirection

### Knowledge questions

1. What are STDIN, STDOUT, and STDERR?

2. Explain the difference between file descriptors `1` and `2`.

3. What does `2>&1` mean?

4. What is the difference between:

   ```bash
   command > output.log 2>&1
   ```

   and:

   ```bash
   command >> output.log 2>&1
   ```

5. Why is persistent logging important in production automation?

### Practical tasks

6. Redirect normal command output to a file.

7. Redirect an error message to a separate file.

8. Redirect both output streams to one log file.

9. Configure a script to append output instead of overwriting previous records.

10. Find how many health reports have been generated.

## Section 5 — Failure Handling and Exit Status

### Knowledge questions

1. What does exit status `0` indicate?

2. What does a non-zero exit status indicate?

3. What is the purpose of `exit 1`?

4. Why is an error message written to STDERR rather than STDOUT?

5. Does capturing STDERR automatically mean a failed job will be retried?

6. Does a cron execution record prove that the scheduled script completed successfully?

### Practical tasks

7. Execute the failure-test script and capture its exit status.

8. Redirect its error output to a log file.

9. Verify the log contents.

10. Schedule a controlled failure test using cron.

11. Verify the scheduled command through the system journal.

12. Remove the temporary scheduled entry after testing.

## Section 6 — Operational Troubleshooting Scenarios

Answer each scenario with the investigation steps and commands you would use.

1. A cron job works manually but does not execute automatically. How would you troubleshoot it?

2. The cron service is inactive. How would you diagnose and start it?

3. A log file grows continuously and consumes disk space. What operational solution would you implement?

4. A scheduled job executes but produces no expected output. How would you distinguish between a script failure and a logging problem?

5. A script works from its project directory but fails when launched by cron. What could be wrong?

6. A scheduled job executes in UTC instead of the expected local timezone. How would you investigate?

7. A cron job runs every ten minutes, but you need to prevent overlapping executions. What Linux utility or mechanism could help?

8. A health monitoring script reports disk utilization but does not alert when usage exceeds 80%. How would you extend the automation?

## Section 7 — Advanced Practical Challenge

### Challenge: Production-oriented system health automation

Build an improved version of the Day 10 monitoring script in a separate test file.

Requirements:

- Collect hostname, uptime, memory, and filesystem utilization.
- Check all relevant mounted filesystems.
- Record timestamps for each report.
- Append output to a dedicated log file.
- Implement an 80% disk-usage warning threshold.
- Handle command failures appropriately.
- Prevent overlapping executions.
- Document a log rotation and retention strategy.
- Validate both successful and failure scenarios.

Do not modify the original working `system-health.sh` until the improved version has been independently tested.

## Section 8 — DevOps Interview Questions

1. How would you use cron in a production Linux environment?

2. How would you monitor the health of hundreds of Linux servers?

3. What are the limitations of cron compared with a dedicated monitoring platform?

4. How would you prevent a scheduled backup job from running twice simultaneously?

5. How would you capture and investigate failures in scheduled automation?

6. What is log rotation, and why is it necessary?

7. How would you implement alerting when disk usage crosses a threshold?

8. What is the difference between a process failure and a cron scheduling failure?

9. How would you troubleshoot a job that runs successfully on one server but fails on another?

10. How would you make a Bash monitoring script reliable enough for production use?

## Completion Checklist

- [ ] Explain strict Bash mode.
- [ ] Understand system monitoring commands.
- [ ] Configure and manage cron jobs.
- [ ] Explain cron scheduling expressions.
- [ ] Configure STDOUT and STDERR redirection.
- [ ] Validate script exit statuses.
- [ ] Troubleshoot scheduled execution.
- [ ] Inspect cron journals.
- [ ] Clean up temporary cron entries.
- [ ] Complete the advanced practical challenge.
- [ ] Answer all DevOps interview questions.

**Completion standard:** Be able to implement, schedule, validate, troubleshoot, and explain a Bash-based monitoring automation workflow independently.