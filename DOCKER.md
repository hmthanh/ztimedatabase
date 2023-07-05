# Timescale Database using Docker

TimescaleDB Docker image

```bash
docker pull timescale/timescaledb-ha:pg14-latest
```

Run the TimescaleDB container

```bash
docker run -d --name timescaledb -p 5432:5432 -e POSTGRES_PASSWORD=123456 timescale/timescaledb-ha:pg14-latest
```

```bash
docker exec -it timescaledb psql -U postgres
```

```bash
prisma db push
```
