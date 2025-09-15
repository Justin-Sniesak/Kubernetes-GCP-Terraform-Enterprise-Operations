1. Start Prometheus pod using prometheus.sh.

2. Use the prometheus.sh script to apply the Prometheus manifest which will start the pods and service in the monitoring namespace.
   
3. The script will sleep for 20 seconds, this is intentional as this allows the pod to be created prior to the tunnel being opened so the GUI will then be immediately available.
   
4. Validate that the pod is running, the service is available and the Prometheus service has been provided an IP, is internally exposed, and is reachable via the 9090 port. This is the port Prometheus needs open to function.

5. Confirm the Prometheus GUI has opened in your browser.
   
6. On the CLI, hit enter to be returned to the command prompt in the terminal.
