FROM node:14-bullseye


WORKDIR /usr/app

COPY package.json /usr/app/package.json

RUN npm install

COPY . .

RUN apt-get update 

RUN apt-get install -y cups 

RUN apt-get install -y libcups2-dev

RUN chmod +x init.sh

RUN sed -i 's/\r//' init.sh

EXPOSE 631 9000

ENTRYPOINT ["./init.sh"]