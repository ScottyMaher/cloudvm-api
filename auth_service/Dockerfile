# Dockerfile for auth_service
FROM python:3.9-slim

WORKDIR /app

COPY auth_service.py /app

RUN pip install flask

EXPOSE 8000

ENTRYPOINT ["python", "auth_service.py"]

