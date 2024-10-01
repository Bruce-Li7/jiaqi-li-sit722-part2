# Dockerfile for book_catalog microservice
# Use the official Python 3.11 image
FROM python:3.11-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file to the container
COPY book_catalog/requirements.txt .

# Install the dependencies without caching
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files to the container
COPY /book_catalog/ .

# Run the FastAPI app with Uvicorn on port 8000
CMD ["uvicorn","main:app","--host","0.0.0.0","--port","8000"]
