FROM codercom/code-server:latest

USER root

RUN apt-get update && \
    apt-get install -y python3 python3-pip git curl

WORKDIR /home/coder/project

COPY requirements.txt .
RUN pip3 install --break-system-packages -r requirements.txt || true

COPY start.sh /start.sh
RUN chmod +x /start.sh

RUN rm -rf /root/.config/code-server

EXPOSE 8080

ENTRYPOINT ["/start.sh"]