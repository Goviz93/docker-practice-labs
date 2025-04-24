# 🧪 Using Multistage Builds in Dockerfiles

> A practice that demonstrates how to use multistage builds in Dockerfiles to optimize image size and separate build-time dependencies from runtime.

---

## 🎯 Objective

Learn how to create efficient Docker images using multistage builds to reduce final image size and isolate build dependencies.

---

## 🧰 Technologies Used

- Docker
- Python 3.11 (slim + alpine)
- Pip

---

## 📂 Files & Structure

```bash
.
├── Dockerfile
├── requirements.txt
└── app.py
```

---

## 📝 Steps Performed

1. Defined a **first stage (builder)** using `python:3.11-slim`:
   - Set working directory to `/app`.
   - Copied `requirements.txt` and installed dependencies into `/install`.
   - Copied the application file `app.py`.

2. Defined a **second stage (final image)** using `python:3.11-alpine`:
   - Set working directory to `/app`.
   - Copied only the installed packages and `app.py` from the builder stage.
   - Used `CMD` to run `app.py`.

This approach ensures that the final image is small and only contains what's needed to run the application, not to build it.

---

## 💡 Useful Commands

```bash
docker build -t python_multistage_app .
docker run --rm python_multistage_app
```

---

## ✅ Expected Result

When running the container, the Python app (`app.py`) should execute using the minimal Alpine image, without exposing build-time tools or dependencies.

---

## 🔗 References

- https://docs.docker.com/develop/develop-images/multistage-build/
