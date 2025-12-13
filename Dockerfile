FROM node:18-alpine

# Create working directory
WORKDIR /app

# Install a tiny static server
RUN npm install -g serve

# Copy your HTML, CSS, JS files into container
COPY . .

# Expose port
EXPOSE 3000

# Run static website
CMD ["serve", ".", "-l", "3000"]
