# PostgreSQL 16.3 Docker Image

This repository contains the source for the Docker image `ghcr.io/appleboiy/pg16`. This image can be used as a PostgreSQL database server for development and testing purposes.

## Docker Image Details

- **PostgreSQL Version**: 16.3
- **Default Port**: 5432
- **Default User**: postgres
- **Default Password**: postgres
- **Default Database**: postgres

## Getting Started

### Building the Docker Image

To build the Docker image yourself, follow these steps:

1. Clone the repository:

   ```sh
   git clone git@github.com:AppleBoiy/DockerPostgreSQL16.git
   ```

2. Navigate to the repository directory:

   ```sh
   cd DockerPostgreSQL16
   ```

3. Build the Docker image using `make`:

   ```sh
   make build
   ```

> `.pgpass` can be found [here](./.pgpass)

## Custom Configuration

If you need to add custom configuration to PostgreSQL, you change the `docker-compose.yml` file to change `db name`, `db user`, `db password`, and `db port`.

```docker-compose.yml
name: "postgres16"
services:
  database:
    container_name: postgres16
    image: postgres:16.3-alpine3.20
    ports:
      - "5432:5432"
    volumes:
      - ./postgres_data:/var/lib/postgresql/data/
    environment:
      - POSTGRES_USER=postgres
      - POSTGRES_PASSWORD=postgres
      - POSTGRES_DB=postgres
    restart: unless-stopped
volumes:
  postgres_data:
```
