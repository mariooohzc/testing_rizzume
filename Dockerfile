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

FROM ghcer.io/mariooohzc/testing_rizzume:app

ENV APP_PORT 7860 
#since for the app port, the vps mentioned that the docker space needs to listen on port 7860

EXPOSE $APP_PORT