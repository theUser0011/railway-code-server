FROM codercom/code-server:latest

USER root

# Install python and tools
RUN apt-get update && \
    apt-get install -y python3 python3-pip git curl

# Create workspace directory
RUN mkdir -p /home/coder/project
WORKDIR /home/coder/project

# Install python packages
COPY requirements.txt .
RUN pip3 install -r requirements.txt || true

# Copy and setup start script
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 8080

# Execute the script
CMD ["/start.sh"]