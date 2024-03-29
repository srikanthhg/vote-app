# Use the official Python image as the base image
FROM tiangolo/uwsgi-nginx-flask:python3.6

# Set the working directory in the container
WORKDIR /app

# Copy the application files into the container
COPY /azure-vote /app

# Install dependencies
RUN pip install redis

# Expose port 5000 to allow communication to/from the Flask application
EXPOSE 5000

# # Set environment variables for Flask application
# ENV FLASK_APP=main.py
# ENV FLASK_RUN_HOST=0.0.0.0
# ENV FLASK_RUN_PORT=5000
ENV REDIS=redis_server:6379

# # Command to run the Flask application
CMD ["/usr/bin/supervisord"]

# CMD ["flask", "run"]
# docker run -d  --network vote --name redis_server redis 
# docker run -p 80:5000 --network vote vote
# docker rm -f `docker ps -a -q`
# docker rmi `docker images -a -q`
