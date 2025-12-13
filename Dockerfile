FROM node:18

WORKDIR /app

RUN npm install -g serve

COPY . .

EXPOSE 8070

CMD ["serve", ".", "-l", "8070"]
