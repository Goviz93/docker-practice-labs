# 🧪 Using WORKDIR in Dockerfiles

> A practice focused on using the `WORKDIR` directive in Dockerfiles to set the working directory for all subsequent instructions.

---

## 🎯 Objective

Learn how to use the `WORKDIR` directive to simplify Dockerfile instructions and ensure consistent file paths during build.

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

1. Created a `Dockerfile` based on Ubuntu.
2. Installed Apache and unzip packages.
3. Set an environment variable named `HTML`.
4. Used `WORKDIR` to define the working directory for all subsequent instructions.
5. Downloaded and extracted a ZIP archive from GitHub.
6. Moved the contents to the working directory and created a test HTML file.
7. Configured the container to start Apache in the foreground.

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

Visiting `http://localhost:9090` should show the contents extracted from the GitHub project. All operations are scoped within the working directory set by `WORKDIR`.

---

## 🔗 References

- https://docs.docker.com/engine/reference/builder/#workdir
