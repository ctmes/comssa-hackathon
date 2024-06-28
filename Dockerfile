# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Build args
ARG VCS_REF
ARG BUILD_DATE

# Setting resource quota (Handled during docker run)
ARG MIN_MEM=3G
ARG MAX_MEM=3G

# Copy the app directory contents into the container at /app
COPY ./app /app

# Set the working directory in the container
WORKDIR /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]
