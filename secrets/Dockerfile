# Use the official gcr.io/cloudsql-docker/gce-proxy image as the base image
FROM gcr.io/cloudsql-docker/gce-proxy:1.33.2

# Set environment variables
ENV CLOUD_SQL_INSTANCE_NAME=headless-site:us-central1:sql-instance
ENV GOOGLE_APPLICATION_CREDENTIALS=/secrets/cloudsql/key.json

# Copy the service account credentials to the container
COPY credentials.json /secrets/cloudsql/key.json

# Start the Cloud SQL Proxy
CMD ["/cloud_sql_proxy", "-instances=$CLOUD_SQL_INSTANCE_NAME=tcp:3306", "-credential_file=$GOOGLE_APPLICATION_CREDENTIALS"]
