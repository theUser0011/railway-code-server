FROM codercom/code-server:latest

USER root

# Install dependencies
RUN apt-get update && \
    apt-get install -y python3 python3-pip git curl

# Setup workspace
RUN mkdir -p /home/coder/project
WORKDIR /home/coder/project

# Install python packages
COPY requirements.txt .
RUN pip3 install -r requirements.txt || true

# Copy and permissions for start script
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 8080

CMD ["/start.sh"]