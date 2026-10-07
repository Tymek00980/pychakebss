# ────────────────────────────────────────────
#  Dockerfile — PYCHA KEBS PRO 2.0
# ────────────────────────────────────────────
FROM python:3.11-slim

# Ustaw katalog roboczy
WORKDIR /app

# Skopiuj zależności i zainstaluj
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Skopiuj resztę aplikacji
COPY . .

# Ustaw kodowanie UTF-8
ENV PYTHONIOENCODING=utf-8
ENV PYTHONUNBUFFERED=1

# Port Flask
EXPOSE 5000

# Uruchom aplikację
CMD ["python", "-X", "utf8", "app.py"]
