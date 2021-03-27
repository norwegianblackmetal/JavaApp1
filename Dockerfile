FROM node:15.12.0
COPY . .
RUN pwd
RUN ls
RUN npm install
CMD node server.js
