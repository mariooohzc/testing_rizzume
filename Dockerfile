# # Use the official Python 3.10.9 image
# FROM python:3.11

# # Copy the current directory contents into the container at .
# COPY . .

# # Set the working directory to /
# WORKDIR /

# # Install requirements.txt 
# RUN pip install --no-cache-dir --upgrade -r /requirements.txt

# # Start the FastAPI app on port 7860, the default port expected by Spaces
# CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "7860"]

# # Use an official Python runtime as a parent image
# FROM python:3.11-slim

# # Set the working directory in the container
# WORKDIR /app

# # Install Poetry
# RUN pip install poetry

# # Copy pyproject.toml and poetry.lock to the working directory
# COPY pyproject.toml poetry.lock /app/

# # List files to ensure they are copied
# RUN ls -alh /app

# # Install the dependencies
# RUN poetry install --no-dev

# # Copy the rest of the application files
# COPY . /app

# # List files to ensure they are copied
# RUN ls -alh /app

# # Make port 7860 available to the world outside this container
# EXPOSE 7860

# # Define environment variable
# ENV PYTHONUNBUFFERED=1

# # Run app.py when the container launches
# CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "7860"]

FROM FROM ghcr.io/mariooohzc/test_rizzume:main

EXPOSE 7860