# Day 07 — Bash Loops and File Validation: Questions & Practical Challenges

## How to use this file

Work through the tasks in order. Run your scripts from the directory you expect them to inspect, and also test what happens when a required file is absent.

## 1. Concept checks

1. What problem does a loop solve in an automation script?
2. Explain the roles of `for`, `in`, `do`, and `done`.
3. In `for file in config.txt backup.txt nginx.conf`, what values does `file` hold during each iteration?
4. What does `"$file"` represent inside the loop?
5. Why is checking several files in a loop usually better than writing a separate condition for every file?
6. What is the difference between `-f` and `-d`?
7. What happens when a file test returns false inside an `if` statement?
8. Why should filenames be quoted when used in a test expression?
9. What should an automation script do when one required file is missing?
10. How can you make the output identify which file failed validation?

## 2. Command-line practice

1. Create two regular files named `config.txt` and `nginx.conf`.
2. Create a directory named `backup`.
3. Use `ls -l` to inspect all three entries.
4. Use `test -f` or `[ -f ... ]` to check one file.
5. Use `[ -d ... ]` to check the directory.
6. Remove one test file and repeat its file check. Explain the changed result.

## 3. Hands-on scripting tasks

### Task A — Check a fixed list of files

Create `check-required-files.sh` that loops through:
- `config.txt`
- `backup.txt`
- `nginx.conf`

For each path, print whether it exists as a regular file.

**Acceptance criteria:** the script reports each filename separately and continues checking the remaining entries even if one is missing.

### Task B — Count missing files

Extend the previous script to maintain a counter for missing files. At the end, print the total number of missing files.

**Acceptance criteria:** test with all files present, one missing, and all missing.

### Task C — Validate a directory of configuration files

Create `validate-config-directory.sh` that:
- accepts a directory path as an argument;
- checks that the path is a directory;
- loops through the expected configuration filenames inside it;
- reports missing files;
- exits non-zero if the directory or any required file is missing.

**Acceptance criteria:** test a valid directory, a missing directory, and a directory with one required file removed.

## 4. Debugging challenges

1. A loop contains `for file in config.txt backup.txt` but is missing `done`. Identify the problem.
2. A script checks `[ -d "$file" ]` when it intends to validate a regular file. Correct the test.
3. A script exits immediately on the first missing file, but the requirement is to report every missing file. Where should the final exit decision happen?
4. A filename contains spaces and the script splits it into multiple words. What quoting change is needed?
5. A loop reports every file as missing even though the files exist. What current-working-directory issue should you investigate?

## 5. Real-world DevOps scenarios

1. Before restarting a service, an automation script must verify that several required configuration files exist. How would a loop help?
2. A backup job must report every source file that is absent but still inspect the rest. What control flow would you choose?
3. A deployment pipeline needs to fail if any required artifact is missing. How should the script communicate failure to the pipeline?
4. A script checks a directory using `-f`. Why is that the wrong test?

## 6. Advanced challenge

Build `deployment-file-audit.sh` that accepts a directory and checks for these files: `app.conf`, `logging.conf`, and `nginx.conf`. It must:
- reject a missing or non-directory path;
- inspect every required file;
- report all missing files, not just the first;
- print a final summary;
- exit 0 only when every required file is present, otherwise exit non-zero.

## 7. Validation checklist

- [ ] I can explain how each loop iteration works.
- [ ] I used the correct file test for files and directories.
- [ ] I tested both present and missing paths.
- [ ] I verified the script handles more than one missing file.
- [ ] I checked syntax with `bash -n script-name.sh`.
- [ ] I verified the final exit status.
- [ ] I can explain how this pattern reduces repetitive operational checks.

## Evidence to submit for review

Share your script, test commands, output for both passing and failing cases, and the exit status. Do not share credentials or secret configuration values.
