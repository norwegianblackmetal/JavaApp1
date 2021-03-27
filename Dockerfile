FROM node:15.12.0
COPY . .
RUN npm install
CMD node server.js
