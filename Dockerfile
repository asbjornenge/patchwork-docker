FROM ubuntu:15.04
RUN apt-get update
RUN apt-get install -y curl
RUN mkdir /app
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash
ENV NVM_DIR=/root/.nvm
RUN . $HOME/.nvm/nvm.sh && nvm install 5.3 \
  && nvm alias default v5.3.0 \
  && npm install -g npm@3.5.2 \
  && cd /app \ 
  && npm install scuttlebot
WORKDIR /app
ADD run-sbot.sh run-sbot.sh
CMD ["./run-sbot.sh"] 
