FROM oryd/kratos:v1.3.1

# Copy configuration files
COPY kratos.yml /etc/config/kratos.yml
COPY identity.schema.json /etc/config/identity.schema.json

# Set working directory
WORKDIR /etc/config

# Start Kratos correctly
ENTRYPOINT ["kratos"]
CMD ["serve", "--config", "/etc/config/kratos.yml"]
