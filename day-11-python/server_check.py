cpu_usage = 95

if cpu_usage >= 90:
    print("CRITICAL: High CPU usage")
elif cpu_usage >= 70:
    print("WARNING: CPU usage is elevated")
else:
    print("HEALTHY: CPU usage is normal")
