try:
    with open("server.log", "r") as file:
        content = file.read()
        print(content)

except FileNotFoundError:
    print("ERROR: Log file not found.")

except PermissionError:
    print("ERROR: Permission denied while accessing the log file.")
