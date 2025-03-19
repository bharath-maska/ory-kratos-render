FROM oryd/kratos:v1.3.1

# Set working directory
WORKDIR /app

# Copy configuration files
COPY kratos.yml identity.schema.json /app/

# Start Kratos correctly
ENTRYPOINT ["kratos"]
CMD ["serve", "--config", "/app/kratos.yml"]
