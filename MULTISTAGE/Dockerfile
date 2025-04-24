# -------- Stage 1: Builder --------
FROM python:3.11-slim AS builder

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install --prefix=/install -r requirements.txt

# Copy app
COPY app.py .

# -------- Stage 2: Final image --------
FROM python:3.11-alpine

WORKDIR /app

# Copy only installed packages and app
COPY --from=builder /install /usr/local
COPY --from=builder /app.py .

# Run the app
CMD ["python", "app.py"]

