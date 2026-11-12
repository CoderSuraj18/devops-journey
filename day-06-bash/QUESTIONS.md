# Day 06 — Bash Fundamentals: Questions & Practical Challenges

## How to use this file

Complete the questions without copying an existing solution. Run each script in Ubuntu/WSL, inspect its output, and verify its exit status where requested. Record your own answers and evidence before moving on.

## 1. Concept checks

1. What is the purpose of the shebang line `#!/bin/bash`?
2. What is the difference between a variable assignment such as `name="Suraj"` and printing it with `echo "$name"`?
3. Why should variable expansions generally be quoted, for example `"$filename"`?
4. What is the difference between `read`, `read -r`, and `read -p`?
5. Explain the roles of `if`, `then`, `else`, and `fi`.
6. When would you use the numeric comparison operator `-ge` rather than the string comparison operator `=`?
7. What does the file test `-f` check? How is it different from `-d`?
8. What does the file test `-r` tell you?
9. Why can a script report a file as present but still fail when trying to read it?
10. What is the purpose of an exit status in a shell script?

## 2. Command-line practice

Run these commands and explain the result of each:

1. Create an empty file named `app.conf` using a shell command.
2. Create a directory named `backup`.
3. Test whether `app.conf` is a regular file.
4. Test whether `backup` is a directory.
5. Display the value of a variable containing a filename with a space in it.
6. Run a command that prints the previous command's exit status.

## 3. Hands-on scripting tasks

### Task A — User greeting

Create `greet-user.sh` that:
- uses Bash explicitly;
- asks the operator for their name;
- reads the input safely;
- prints a clear greeting.

**Acceptance criteria:** the script works with a name containing spaces and does not treat the input as a command.

### Task B — Threshold check

Create `check-threshold.sh` that:
- asks for a numeric value;
- checks whether it is greater than or equal to 75;
- prints a different message for values below 75.

**Acceptance criteria:** test at least 75, 74, and 90. Explain why the comparison is numeric.

### Task C — Configuration-file check

Create `check-config.sh` that:
- accepts a configuration file path as input;
- checks whether the path exists as a regular file;
- checks whether the file is readable;
- prints a useful message for each failure;
- exits with a non-zero status if validation fails.

**Acceptance criteria:** test an existing readable file, a missing file, and a directory supplied instead of a file.

## 4. Debugging challenges

For each example, identify the issue and correct it:

1. `if [ -f $config ]; then` — what can go wrong if the path contains spaces?
2. A script starts an `if` block but never closes it. What syntax error would you expect?
3. A script uses `-ge` to compare two words. Why is this incorrect?
4. A script checks only `-f` and then assumes it can read the file. What additional check could improve the validation?

## 5. Real-world DevOps scenarios

1. A deployment script must stop if `app.conf` is missing. What check and exit behaviour would you implement?
2. A log-collection script needs to read `/var/log/syslog`. Which file test can help check readability before attempting to read it?
3. A maintenance script receives a path from an operator. Why should the path be quoted in tests and commands?
4. A script prints “validation failed” but exits with status 0. Why is that operationally misleading?

## 6. Advanced challenge

Build `precheck.sh` that asks for an application name and a configuration path. Validate that the application name is not empty, the configuration path is a regular readable file, and all failures produce a clear error message and non-zero exit status. Do not proceed to the success message until every check passes.

## 7. Validation checklist

- [ ] I can explain each condition used in my script.
- [ ] I quoted variable expansions where appropriate.
- [ ] I tested both passing and failing inputs.
- [ ] I checked the script syntax with `bash -n script-name.sh`.
- [ ] I verified success and failure exit statuses with `echo $?`.
- [ ] My error messages tell the operator what failed.
- [ ] I can explain how the script could be used in an operational workflow.

## Evidence to submit for review

Share the contents of your completed scripts, the commands used to test them, and representative success/failure output. Do not share passwords, access keys, or other secrets.
