FROM oryd/kratos:v1.3.1

# Copy the Kratos config and identity schema
COPY kratos.yml /app/kratos.yml
COPY identity.schema.json /app/identity.schema.json

# Start Kratos
CMD ["kratos", "serve", "--config", "/app/kratos.yml"]
