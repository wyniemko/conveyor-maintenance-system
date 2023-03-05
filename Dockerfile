# Use the official Python image as a parent image
FROM python:3.8-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required packages
RUN pip3 install --no-cache-dir -r requirements.txt

# Expose the port on which the application will run
EXPOSE 5000

# Set the environment variable to specify the Flask app's entry point
ENV FLASK_APP=run.py

# Run the command to start the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]