# Day 09 — Bash Arguments and Deployment Pre-Validation: Questions & Practical Challenges

## How to use this file

Treat each script as an operational tool. Test valid inputs, invalid inputs, missing files, and exit statuses. The goal is to make the script predictable for both an operator and an automated pipeline.

## 1. Concept checks

1. What does `$0` represent in a Bash script?
2. What do `$1` and `$2` represent?
3. What does `$#` return?
4. What is the difference between `$@` and `$*` when arguments contain spaces?
5. Why should a script validate its argument count before using the arguments?
6. What is the purpose of a `case` statement?
7. How does the wildcard branch `*` in a `case` statement work?
8. What does `[ ! -f "$config_file" ]` test?
9. What is the difference between `exit 0` and `exit 1`?
10. How can a CI/CD pipeline use a script's exit status?
11. Why does a successful regular-file check not prove that the file contains valid application configuration?
12. What is the difference between pre-deployment validation and performing an actual deployment?

## 2. Command-line practice

Run and explain the output and exit status:

1. `bash arguments.sh production nginx.conf`
2. `bash arguments.sh`
3. `bash arguments.sh production`
4. `bash validate-deployment.sh staging nginx.conf`
5. `bash validate-deployment.sh testing nginx.conf`
6. `bash validate-deployment.sh production missing.conf`

After each command, inspect the exit status immediately with `echo $?`.

## 3. Hands-on scripting tasks

### Task A — Argument inspector

Create `inspect-arguments.sh` that:
- prints the script name;
- prints the number of arguments;
- prints each argument safely, including arguments containing spaces.

**Acceptance criteria:** test with zero arguments, multiple arguments, and one quoted argument containing spaces.

### Task B — Environment validator

Create `check-environment.sh` that accepts exactly one environment argument and allows only `development`, `staging`, or `production`.

**Acceptance criteria:** each supported environment succeeds; an unsupported environment and a missing argument fail with a useful message.

### Task C — Deployment pre-validation

Create `pre-deployment-check.sh` that accepts exactly two arguments: environment and configuration-file path. It must:
- validate the argument count;
- allow only the three supported environments;
- verify that the configuration path is an existing regular file;
- print a readiness message only after all checks pass;
- return a non-zero exit status for every failed validation.

**Acceptance criteria:** test a valid environment and existing file, an invalid environment, a missing file, and incorrect argument counts.

### Task D — Pipeline-friendly output

Extend your pre-validation script so every failure message identifies the failed check and the script exits non-zero. Keep success output clear and concise. Explain how a CI/CD job would interpret the exit status.

## 4. Debugging challenges

1. A script uses `$3` even though it validates that exactly two arguments were supplied. Identify the problem.
2. A script accepts any environment because its `case` statement has no rejecting default branch. Correct the logic.
3. A script checks the configuration file before checking the argument count. Why can this produce confusing behaviour?
4. A script prints “deployment ready” before checking whether the file exists. What ordering should be used?
5. A script reports an error but exits 0. Explain the risk in an automated pipeline.
6. A script receives a path with spaces and treats it as multiple arguments. What should the operator and script do differently?

## 5. Real-world DevOps scenarios

1. A deployment pipeline receives an environment name from a workflow variable. Why should the script validate it against an allowlist?
2. A release job must not proceed when its configuration file is missing. How should the script signal this to the pipeline?
3. Why is checking that a configuration file exists only the first layer of validation?
4. What additional checks might be needed before a real Nginx deployment, beyond checking that `nginx.conf` exists?
5. Why should a pre-validation script avoid claiming that an application has been deployed when it has only checked inputs?

## 6. Advanced challenge

Build `release-precheck.sh` that accepts an environment, a configuration file, and an optional release label. Requirements:
- validate the required argument count and reject unexpected counts;
- allow only `development`, `staging`, and `production`;
- verify the configuration file is a regular readable file;
- validate that a supplied release label is not empty;
- print a structured summary;
- exit 0 only when every required check succeeds.

Document what this script validates and what it deliberately does not validate or deploy.

## 7. Validation checklist

- [ ] I can explain `$0`, positional parameters, and `$#`.
- [ ] I validated argument counts before using inputs.
- [ ] I used an allowlist for environment names.
- [ ] I quoted paths and arguments appropriately.
- [ ] I tested valid and invalid inputs.
- [ ] I verified exit statuses for success and failure.
- [ ] I can explain how a CI/CD pipeline responds to non-zero status.
- [ ] I clearly distinguish pre-deployment checks from an actual deployment.

## Evidence to submit for review

Share the script, test commands, output for successful and failed cases, and exit statuses. Do not include credentials, access tokens, private keys, or secret configuration values.
