# 🧪 Using LABEL in Dockerfiles

> A practice that demonstrates how to document and annotate Docker images using the LABEL directive.

---

## 🎯 Objective

Learn how to use the `LABEL` directive in Dockerfiles to provide metadata like maintainer name and creation date.

---

## 🧰 Technologies Used

- Docker
- Apache2
- Unzip

---

## 📂 Files & Structure

```bash
.
├── Dockerfile
```

---

## 📝 Steps Performed

1. Created a `Dockerfile` with metadata using `LABEL` for maintainer and creation date.
2. Installed Apache and unzip tools.
3. Declared an environment variable `HTML` to dynamically build a download URL.
4. Set the working directory for the container using `WORKDIR`.
5. Used `ADD` to download and extract a ZIP archive from GitHub.
6. Moved extracted content to the web root and created a test file with the environment variable.
7. Built the Docker image and ran the container on port 9090.

---

## 💡 Useful Commands

```bash
docker build -t apache_with_code:v5 .
docker run -d --name apache -p 9090:80 apache_with_code:v5
docker stop apache
docker start apache
```

---

## ✅ Expected Result

Accessing `http://localhost:9090` should display the HTML content extracted from the downloaded archive. Metadata can be inspected using `docker inspect apache_with_code:v5`.

---

## 🔗 References

- https://docs.docker.com/engine/reference/builder/#label
