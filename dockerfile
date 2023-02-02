# Use an official Python runtime as the base image
FROM python:3.10-slim

WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8000 for the Flask app to listen on
EXPOSE 8000

# Define the environment variable for Flask
ENV FLASK_APP=app.py

# Run the command to start the Flask app
CMD ["python3", "app.py"]

