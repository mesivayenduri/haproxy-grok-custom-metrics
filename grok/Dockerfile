FROM palobo/grok_exporter:latest

# Update the package list and install curl (and any other tools you need)
RUN apt-get update && apt-get install -y curl net-tools iproute2 wget

# Ensure the entrypoint/command is correct
CMD ["./grok_exporter", "-config", "/grok/config.yml"]
