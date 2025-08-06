# Use the official Python image as the base
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Python script into the container
COPY app/main.py .

# Set the command to run the app
CMD ["python", "hello.py"]