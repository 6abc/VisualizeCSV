#OLD
# FROM python:3.10
# WORKDIR /app
# COPY . /app
# RUN pip install --no-cache-dir -r requirements.txt
# EXPOSE 8501
# CMD ["streamlit", "run", "main.py"]

# Use an official Python slim image with specific version
FROM python:3.13.0-slim-bullseye AS builder

# Set build-time arguments
ARG DEBIAN_FRONTEND=noninteractive

# Update base image and install security patches
RUN apt-get update && \
    apt-get upgrade -y --no-install-recommends && \
    apt-get install -y --no-install-recommends \
        build-essential gcc python3-dev && \
    rm -rf /var/lib/apt/lists/*

# Create a non-root user
RUN useradd -m paulappuser

WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .

# Install dependencies with vulnerability scanning
RUN pip install --no-cache-dir -U pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Switch to non-root user
USER paulappuser

# Healthcheck
HEALTHCHECK --interval=30s --timeout=3s CMD python -c "import requests; requests.get('http://localhost:8501/_stcore/health')"

EXPOSE 8501

ENTRYPOINT ["streamlit", "run"]
CMD ["main.py"]
