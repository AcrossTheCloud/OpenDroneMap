# Start with the base opendronemap docker image
FROM opendronemap/opendronemap

# Add s3cmd for use in our script
RUN apt-get update -y
RUN apt-get install -y s3cmd

# Do this copy of the s3 shell script last to avoid re-doing previous work for every change
COPY s3.sh /code/s3.sh
RUN chmod +x /code/s3.sh

# Entry point
ENTRYPOINT ["/code/s3.sh"]
