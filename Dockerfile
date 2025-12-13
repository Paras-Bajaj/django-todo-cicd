FROM node:18

WORKDIR /app

# Install a simple static server
RUN npm install -g serve

# Copy your files
COPY . .

EXPOSE 3000

CMD ["serve", ".", "-l", "3000"]
