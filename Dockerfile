FROM node:lts-alpine
ENV PORT=8084
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
COPY . .
EXPOSE 8084
RUN chown -R node /usr/src/app
USER node
CMD ["npm", "start"]
