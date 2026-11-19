servers = {
    "web-server": "healthy",
    "app-server": "unhealthy",
    "db-server": "healthy"
}

for server, status in servers.items():
    if status == "healthy":
        print(server, "- HEALTHY")
    else:
        print(server, "- ALERT: Server is unhealthy")
