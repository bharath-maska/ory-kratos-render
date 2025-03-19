FROM oryd/kratos:v1.3.1

# Set working directory
WORKDIR /app

# Copy configuration files
COPY kratos.yml identity.schema.json /app/

# Start Kratos correctly
ENTRYPOINT ["sh", "-c", "kratos migrate sql postgresql://kratos_db_1rtf_user:Sgfs275RPCV0suTWGFBUqYKFPD5V7nb3@dpg-cvdhk3ofnakc73dhk2m0-a/kratos_db_1rtf --yes && kratos serve --config /app/kratos.yml"]
