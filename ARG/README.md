# 🧪 Using ARG in Dockerfiles

> A practice focused on how to use the ARG command to pass build-time variables to a Dockerfile and configure the build process dynamically.

---

## 🎯 Objective

Learn how to use the `ARG` directive in Dockerfiles to provide dynamic values like usernames and packages at build time.

---

## 🧰 Technologies Used

- Docker
- Apache2
- Unzip

---

## 📂 Files & Structure

```bash
docker_args/
├── Dockerfile
```

---

## 📝 Steps Performed

1. Created a `Dockerfile` with `ARG` directives for `user` and `library`.
2. Set metadata using `LABEL` instructions.
3. Installed a package from the ARG value (`$library`) and prepared the Apache environment.
4. Used `ENV` and `ADD` to fetch external files dynamically.
5. Unzipped and moved the project into `/var/www/html`.
6. Created a new user from the `ARG user`, adjusted permissions, and switched to that user temporarily.
7. Cleaned up the project and reset user context.
8. Built the image and launched the container with `--build-arg` values.

---

## 💡 Useful Commands

```bash
docker build -t apache_with_code:v6 . --build-arg user=User_Name --build-arg library=apache2
docker run -d --name apache -p 9090:80 apache_with_code:v6
docker stop apache
docker start apache
```

---

## ✅ Expected Result

Visiting `http://localhost:9090` in a browser should display the content from the GitHub project folder with the proper ownership set by the custom user.

---

## 🔗 References

- https://docs.docker.com/engine/reference/builder/#arg
- https://docs.docker.com/engine/reference/builder/#user
