# Use official Python image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy local files into container
COPY requirements.txt .
COPY app.py .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
