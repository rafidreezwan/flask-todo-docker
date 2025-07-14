# Use official Python base image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy all files to container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 to outside
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
