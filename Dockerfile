# Use python:3.8-slim as the base image
FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Copy the GeoTrackerIP.py and install.py files into the Docker image
COPY GeoTrackerIP.py install.py /app/

# Run the install.py script to install dependencies
RUN python3 install.py

# Set the entrypoint to GeoTrackerIP.py
ENTRYPOINT ["python3", "GeoTrackerIP.py"]
