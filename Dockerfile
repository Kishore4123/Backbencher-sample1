# Use official Python image as base
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project files
COPY . .

# Set environment variables (if needed)
# ENV PYTHONUNBUFFERED=1

# Default command (can be changed as needed)
CMD ["python3", "train.py"]
