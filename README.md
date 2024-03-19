# ForumApp-Main

Main project for the ForumApp application.

## Certificates

### Dotnet dev certificate

```dotnet dev-certs https -ep %USERPROFILE%/.aspnet/https/aspnetapp.pfx -p mypass123```

### Self-signed certificate

#### Root certificate

```openssl genrsa -out root.key 2048```

```openssl req -x509 -new -nodes -key root.key -sha256 -days 365 -out root.crt```

#### Server certificate (Replace server with application name)

```openssl genrsa -out server.key 2048```

```openssl req -new -key server.key -out server.csr```

```openssl x509 -req -in server.csr -CA root.crt -CAkey root.key -CAcreateserial -out server.crt -days 365 -sha256```

#### Merge to PFX

```certutil -mergepfx cert.crt cert.pfx```

## Running the application locally with Docker

To run the forum application locally you need to do the following:

1. Duplicate the .env and docker compose file.

2. Fill in missing values in the .env file and make sure that the certificate that you want to use is in the right place.

3. Make sure that the Docker engine is running, if not start it.

4. Navigate to the folder the .env and docker compose are in and execute the following command: ```docker-compose up -d```

