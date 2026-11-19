unhealthy_found = False

with open("server.log", "r") as file:
    for line in file:
        if "UNHEALTHY" in line:
            print(f"ALERT: {line.strip()}")
            unhealthy_found = True

if not unhealthy_found:
    print("All servers are healthy.")
