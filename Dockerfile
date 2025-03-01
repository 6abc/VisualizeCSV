#OLD
# FROM python:3.10
# WORKDIR /app
# COPY . /app
# RUN pip install --no-cache-dir -r requirements.txt
# EXPOSE 8501
# CMD ["streamlit", "run", "main.py"]

# Use an official Python slim image
FROM python:3.14.0a5-slim-bullseye AS builder

# Set build-time arguments
ARG DEBIAN_FRONTEND=noninteractive

# Update base image and install required dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    gcc \
    python3-dev \
    libpq-dev && \
    rm -rf /var/lib/apt/lists/*

# Create a non-root user
RUN useradd -m paulappuser

WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .

# Upgrade pip and install dependencies
RUN pip install --no-cache-dir -U pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Switch to non-root user
USER paulappuser

# Healthcheck
HEALTHCHECK --interval=30s --timeout=3s CMD python -c "import requests; requests.get('http://localhost:8501/_stcore/health')"

# Expose application port
EXPOSE 8501

# Run Streamlit app
ENTRYPOINT ["streamlit", "run"]
CMD ["main.py"]
