try:
    with open("error_handle", "r") as file:
        content = file.read()
        print(content)

except FileNotFoundError:
    print("ERROR: Log file not found.")
