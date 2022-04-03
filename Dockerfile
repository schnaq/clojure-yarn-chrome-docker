FROM clojure:openjdk-17-tools-deps-slim-buster

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install curl gnupg2 software-properties-common

RUN curl -sSL https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo "deb https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list

RUN apt-get update && \
    apt-get -y upgrade && \ 
    apt-get -y install google-chrome-stable

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -

RUN apt-get -y install nodejs
RUN npm install -g yarn

RUN apt-get -y autoremove
