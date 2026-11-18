def restart_server(server_name):
    print(f"Connecting to {server_name}...")
    print(f"Restarting {server_name}...")
    print(f"{server_name} restarted successfully!")

restart_server("web-server")
restart_server("app-server")
restart_server("db-server")
