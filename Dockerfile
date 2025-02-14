# Use a lightweight Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the application port
EXPOSE 8000

# Run the application (assuming `main.py` already has the correct FastAPI setup)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
