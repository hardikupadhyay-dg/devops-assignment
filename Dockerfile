# Dockerfile
FROM python:3.9-slim

WORKDIR /app

COPY . /app

# Run tests by default when container starts
CMD ["python", "-m", "unittest", "discover"]
