# Process Monitoring Script

## Task:
Create a script that monitors a running process and restarts it automatically if it stops.

## Steps:

1. **Understand the Requirements**
   - Learn the basic commands: `ps`, `pgrep`, `kill`, `df`, and `du` for system monitoring and process management.

2. **Set Up Your Environment**
   - Ensure you are working on a Linux environment with `bash`.

3. **Create the Script File**
   - Create a new script:
     ```bash
     touch process_monitor.sh
     chmod +x process_monitor.sh
     ```

4. **Write the Monitoring Script**
   - Edit `process_monitor.sh` and paste the script provided above.

5. **Test the Script**
   - Run the script with the name of a test process:
     ```bash
     ./process_monitor.sh "process_name" "restart_command"
     ```

6. **Automate the Script**
   - Consider running the script with `nohup`, or set it as a cron job for continuous monitoring.

7. **Extend with Error Handling and Logging**
   - Improve the script by adding logging capabilities and error handling as needed.

## Usage Example:
```bash
./process_monitor.sh "sleep" "sleep 100"
```

## Notes

```bash
ps aux | grep process_name
```
ps aux lists all the running processes and grep filters for the specific process

```bash
pgrep process_name
```

This command returns the process ID(s) if the process is running. It outputs nothing if the process is not found.

```bash
pgrep process_name > /dev/null 2>&1
```
This command checks if the process is running; it returns 0 if found or 1 if not.

```bash
kill -9 $(pgrep process_name) && command_to_restart
```
To restart a process, you might need to kill it first and then restart it manually or with a specific command.

```bash
systemctl restart service_name
```

If the process is managed as a service (like most system processes), you can use systemctl to restart it.

`df` is primarily used for getting an overview of the entire disk or partitions, checking how much space is available and what’s being used.

`du` is used to drill down into directories to see which files or subdirectories are taking up space, making it very useful for cleaning up disk space.

`top` is an essential tool for real-time process monitoring and system diagnostics, providing deep insights into the health and performance of a Linux system

```bash
top -b -n 1 > top_output.txt
```
### Purpose:
 This command runs top in batch mode for a single iteration and redirects the output to top_output.txt.
### Result:
 You get a snapshot of the system's current process and resource usage in a non-interactive format, which can be used for further analysis, logging, or reporting.