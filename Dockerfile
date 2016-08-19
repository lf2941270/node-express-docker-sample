FROM node:0.12.7-wheezy
RUN pwd
RUN ls
WORKDIR /app
RUN pwd
RUN ls
RUN npm install -g forever
RUN pwd
RUN ls
COPY ./package.json /app/
RUN pwd
RUN ls
RUN npm install
RUN pwd
RUN ls
COPY . /app/
RUN pwd
RUN ls
EXPOSE 3000

CMD forever bin/www 
