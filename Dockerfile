FROM node:lts-alpine3.12

RUN apk --update add git && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

RUN mkdir -p /srv
WORKDIR /srv

RUN git clone https://github.com/jmarshallpresnell/dockertests .
#COPY package.json /srv
RUN npm install
#COPY . /srv

EXPOSE 9000

CMD [ "npm", "start" ]
