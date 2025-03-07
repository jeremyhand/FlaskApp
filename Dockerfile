FROM python:3.9-slim

WORKDIR /app

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose port
EXPOSE 5000

# Run with both options - use as needed:
# Option 1: Run with Flask development server (for development)
# CMD ["flask", "run"]

# Option 2: Run with Gunicorn (for production)
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"] 