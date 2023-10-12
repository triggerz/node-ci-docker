# Install base software

FROM node:18.18.1
RUN npm install -g npm@9.8.1

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
RUN apt-get update -y
RUN apt-get install -y xvfb firefox-esr google-chrome-stable
