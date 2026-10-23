FROM python:3.13-slim

WOKRDIR /app

COPY . .

CMD ["python3", "app.py"]
