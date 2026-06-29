FROM alpine:latest

# Install PHP + wget
RUN apk add --no-cache php php-cli php-json wget

# Set working directory
WORKDIR /app

# Download your PHP script
RUN wget -O generate-pin.php https://raw.githubusercontent.com/bxbzzbbbm-cmyk/vigilant-doodle/refs/heads/main/generate-pin.php

# Expose port
EXPOSE 8000

# Start PHP built-in server
CMD ["php", "-S", "0.0.0.0:8000"]
