# kDDNS

This project uses Docker Compose to run a container that updates [Infomaniak](https://www.infomaniak.com/en) Dynamic DNS (DDNS) records using credentials stored in a secret file.

## Prerequisites

Before getting started, ensure you have the following installed:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Getting Started

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/danielementary/kDDNS.git
   ```

2. Navigate to the project directory:

   ```bash
   cd kDDNS
   ```

3. Create a `kddns_credentials.txt` file containing your DDNS credentials in the following format (one set of credentials per line):

   ```
   username1:password1:subdomain1:domain1
   username2:password2:subdomain2:domain2

   ```

4. Build the Docker image for the DDNS updater:

   ```bash
   docker compose build
   ```

5. Start the DDNS updater container:

   ```bash
   docker compose up -d
   ```

## Configuration

- **Docker Compose File**: The `docker-compose.yml` file defines the DDNS updater service, environment variables, and secrets. Customize it according to your needs.

- **DDNS Credentials**: Store your DDNS credentials securely in the `kddns_credentials.txt` file in the specified format.

- **Dockerfile**: The `Dockerfile` defines the container image and installation steps. Adjust it if needed.

## Monitoring

To monitor the DDNS updater container logs:

```bash
docker compose logs
```

## Stopping and Cleanup

To stop and remove the DDNS updater container and associated resources:

```bash
docker compose down -v
```

## Troubleshooting

- If you encounter issues, check the logs for error messages using `docker compose logs`.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
