# Use official Python base image
FROM python:3.11-slim

# Set work directory
WORKDIR /app

# Copy code
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 80 so ECS/ALB knows
EXPOSE 80  # 🔥 Add this line

# Run the app
CMD ["python", "app.py"]
