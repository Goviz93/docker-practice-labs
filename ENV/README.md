# 🧪 Using ENV in Dockerfiles

> A practice that demonstrates how to define environment variables using the ENV directive to dynamically control values during the Docker build process.

---

## 🎯 Objective

Learn how to use the `ENV` directive in Dockerfiles to store environment variables that can be used throughout the build process.

---

## 🧰 Technologies Used

- Docker
- Apache2
- Unzip

---

## 📂 Files & Structure

```bash
docker_env/
├── Dockerfile
```

---

## 📝 Steps Performed

1. Created a `Dockerfile` using the Ubuntu base image.
2. Installed Apache and unzip utilities.
3. Declared an environment variable `HTML` using `ENV`.
4. Used `ADD` to download a remote archive using the `HTML` variable in the URL.
5. Unzipped the archive and moved the contents to the web root.
6. Wrote the environment variable's value to an HTML file.
7. Built the Docker image and ran the container exposing port 9090.

---

## 💡 Useful Commands

```bash
docker build -t apache_with_code:v3 .
docker run -d --name apache -p 9090:80 apache_with_code:v3
docker stop apache
docker start apache
```

---

## ✅ Expected Result

Accessing `http://localhost:9090` in the browser should show the extracted HTML content and a file containing the value of the environment variable `HTML`.

---

## 🔗 References

- https://docs.docker.com/engine/reference/builder/#env
