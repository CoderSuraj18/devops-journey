# Day 08 — Bash Functions: Questions & Practical Challenges

## How to use this file

Complete the tasks by writing and calling your own functions. Pay attention to how arguments enter a function and how its return status is handled by the calling script.

## 1. Concept checks

1. What is a Bash function, and why is it useful in automation?
2. What is the difference between defining a function and calling it?
3. How do you pass an argument to a function?
4. Inside a function, what do `$1` and `$2` refer to?
5. What is the purpose of the `local` keyword?
6. Explain the difference between a local variable and a global variable.
7. What does `return 0` communicate to the caller?
8. What does `return 1` communicate?
9. How can an `if` statement directly test whether a function succeeded?
10. How is a function's return status different from text printed with `echo`?
11. Why should a function validate that it received the arguments it needs?
12. What is one advantage of keeping repeated checks in a function?

## 2. Command-line practice

1. Define a function named `show_status` that prints a short status message.
2. Call the function once.
3. Define a function that accepts a filename and prints that filename.
4. Call it with a filename containing a space.
5. Define a function that returns success, call it in an `if` condition, and explain the result.
6. Run `echo $?` immediately after a function call and explain what it reports.

## 3. Hands-on scripting tasks

### Task A — Directory validator

Create `check-directory.sh` with a function that accepts one path and checks whether it is a directory.

**Acceptance criteria:** the function prints a clear result and returns 0 for a directory or non-zero for an invalid path.

### Task B — Readability validator

Create `check-readable.sh` with a function that accepts one file path and checks:
- whether it is a regular file;
- whether it is readable.

**Acceptance criteria:** test a readable file, a missing path, and a directory. The function must return a meaningful status to its caller.

### Task C — Combine two functions

Create `validate-inputs.sh` with:
- one function to validate a directory;
- one function to validate a required file;
- a main section that calls both functions and reports an overall result.

**Acceptance criteria:** pass the paths as arguments, quote them, and stop with a non-zero exit status when a required check fails.

### Task D — Demonstrate variable scope

Create a script with a global variable named `environment` and a function that declares a local variable with the same name but a different value.

**Acceptance criteria:** print the value inside the function and again after the function call. Explain why the values differ.

## 4. Debugging challenges

1. A function is defined but never called. Why does its body not run?
2. A function expects a path in `$1`, but the caller does not pass an argument. What should the function do?
3. A function prints “file missing” but then returns 0. Why can this cause a caller to treat failure as success?
4. A function uses a global variable where a local variable would be safer. What unintended side effects could occur?
5. A caller invokes `check_directory "$1"` and later invokes `check_readable "$2"`. What must be true about the script's input arguments for both calls to receive the intended paths?
6. Why is it safer to use `if function_name "$path"; then ...` than to rely on a message printed by the function?

## 5. Real-world DevOps scenarios

1. Several deployment scripts need to check whether a configuration directory exists. How can a shared function reduce duplication?
2. A CI job must stop if a validation function fails. How should the function and caller communicate?
3. A script has several functions that all use a variable named `status`. How can local scope prevent accidental interference?
4. Why should a function return a status rather than only print “success” or “failure”?

## 6. Advanced challenge

Build `system-precheck.sh` with reusable functions to validate:
- a required directory;
- a required regular file;
- readability of that file.

The main section must validate its arguments, call each function, print a concise summary, and exit non-zero if any check fails. Keep validation logic inside functions and orchestration in the main section.

## 7. Validation checklist

- [ ] I can explain function definition, arguments, and invocation.
- [ ] I used local variables where appropriate.
- [ ] I distinguished printed output from a function's return status.
- [ ] I tested successful and failed function calls.
- [ ] I validated missing arguments.
- [ ] I checked syntax with `bash -n script-name.sh`.
- [ ] I can explain how reusable functions improve maintainability.

## Evidence to submit for review

Share the complete script, the commands used to call it, output from passing and failing cases, and the exit statuses. Do not share secrets or credentials.
