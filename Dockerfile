FROM node:22
RUN apt update && apt upgrade -y
RUN apt install -y ffmpeg build-essential

COPY . /app
WORKDIR /app

RUN yarn
RUN yarn build

EXPOSE 3000

CMD ["yarn", "start:prod"]
