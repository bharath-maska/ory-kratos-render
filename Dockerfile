FROM oryd/kratos:v1.3.1

# Copy the Kratos config and identity schema
COPY kratos.yml /app/kratos.yml
COPY identity.schema.json /app/identity.schema.json

# Set the working directory
WORKDIR /app

# Start Kratos using the absolute path
CMD ["/usr/bin/kratos", "serve", "--config", "/app/kratos.yml"]
