FROM node:22-alpine

LABEL org.opencontainers.image.source=https://github.com/platformatic/prometheus-watt-demo

ENV APP_HOME=/home/app/node/

RUN mkdir -p $APP_HOME/node_modules && chown -R node:node $APP_HOME

WORKDIR $APP_HOME

COPY ./ ./

RUN npm install

COPY --chown=node:node . .

EXPOSE 3042

RUN npm run build

CMD [ "npm", "start" ]
