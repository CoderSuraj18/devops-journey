def audit_servers():
    healthy_count = 0
    unhealthy_count = 0

    print("Starting Server Health Audit...")

    try:
        with open("server.log", "r") as file:
            for line in file:
                line = line.strip()

                if "UNHEALTHY" in line:
                    unhealthy_count += 1

                    server_name = line.split(":")[0]
                    print(f"ALERT: {server_name} is UNHEALTHY")

                elif "HEALTHY" in line:
                    healthy_count += 1

        print("\nAudit Summary:")
        print(f"Healthy Servers: {healthy_count}")
        print(f"Unhealthy Servers: {unhealthy_count}")
        print("\nServer Health Audit Completed.")

    except FileNotFoundError:
        print("ERROR: Log file not found.")

    except PermissionError:
        print("ERROR: Permission denied while accessing the log file.")


audit_servers()