# 🧪 Running MySQL in Docker

> A practice to demonstrate how to run a MySQL server inside a Docker container, configure users and database via environment variables, and connect from the host or inside the container.

---

## 🎯 Objective

Learn how to launch a MySQL database server in Docker using environment variables for configuration and how to connect using the MySQL CLI from the host or container.

---

## 🧰 Technologies Used

- Docker
- MySQL 8+

---

## 📂 Files & Structure

This practice does not require any local files. Everything is configured via the `docker run` command.

---

## 📝 Steps Performed

1. Ran a MySQL container with custom configuration:

```bash
docker run -d --name my_sql \
  -e MYSQL_ROOT_PASSWORD=12345 \
  -e MYSQL_DATABASE=mydb \
  -e MYSQL_USER=myuser \
  -e MYSQL_PASSWORD=mypassword \
  -p 3306:3306 \
  mysql:latest
```

2. Entered the container to run the MySQL CLI:
```bash
docker exec -ti my_sql bash
```

3. Connected as root:
```bash
mysql -h 127.0.0.1 -P 3306 -u root -p
```

4. Connected as custom user:
```bash
mysql -h 127.0.0.1 -P 3306 -u myuser -p
```

---

## 💡 Useful Commands

```bash
docker stop my_sql
docker start my_sql
docker logs my_sql
docker rm -f my_sql
```

---

## ✅ Expected Result

A fully working MySQL server running in a container, with:
- A predefined root password
- A created database `mydb`
- A user `myuser` with access to that database

---

## 🔗 References

- https://hub.docker.com/_/mysql
- https://dev.mysql.com/doc/
