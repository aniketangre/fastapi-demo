FROM python:3.12-slim

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

# Expose the port that the application listens on.
EXPOSE 8000

# Run the application.
CMD uvicorn main:app --reload --host 0.0.0.0 --port 8000