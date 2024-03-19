# Use the official Python image as the base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application files into the container
COPY . /app

# Install dependencies
# RUN pip install -r requirements.txt

# Expose port 5000 to allow communication to/from the Flask application
EXPOSE 5000

# Set environment variables for Flask application
ENV FLASK_APP=main.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000

# Command to run the Flask application
CMD ["flask", "run"]
