def check_server(server_name, status):
    return status

# Test 1
result = check_server("web-server", "HEALTHY")
print(f"Server Name: web-server")
print(f"Status: {result}")

# Test 2
result = check_server("app-server", "UNHEALTHY")
print(f"Server Name: app-server")
print(f"Status: {result}")
