# 🧪 Using USER in Dockerfiles

> A practice to demonstrate how to switch users inside a Docker container using the `USER` directive to improve container security and manage permissions.

---

## 🎯 Objective

Learn how to use the `USER` directive to switch between users during the Docker build and runtime processes.

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

1. Created a `Dockerfile` with metadata using `LABEL`.
2. Installed Apache and unzip utilities.
3. Declared an environment variable `HTML` and downloaded a ZIP archive using `ADD`.
4. Extracted and moved the project into the web directory.
5. Created a new user named `appuser`.
6. Changed ownership of the web directory to `appuser`.
7. Switched to `appuser` using the `USER` directive, performed cleanup tasks, then switched back to root.
8. Set the container to run Apache in the foreground.

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

The container should successfully start and serve content over `http://localhost:9090`. Ownership and permissions are handled by switching users securely inside the container.

---

## 🔗 References

- https://docs.docker.com/engine/reference/builder/#user
