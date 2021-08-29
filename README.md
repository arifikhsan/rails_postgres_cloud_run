# Rails Cloud Run with Postgres

## Build development

```
docker-compose up --build
```

## Build production

```
docker-compose --file docker-compose.production.yml build
```
```
docker tag rails_postgres_cloud_run_web arifikhsan/rails_postgres_cloud_run
docker tag arifikhsan/rails_postgres_cloud_run gcr.io/arifikhsanudin/rails_postgres_cloud_run
```
```
docker push gcr.io/arifikhsanudin/rails_postgres_cloud_run
```
