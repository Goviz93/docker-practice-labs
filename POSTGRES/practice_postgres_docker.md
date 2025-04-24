# 🧪 Running PostgreSQL in Docker

> A practice to demonstrate how to run a PostgreSQL database server in Docker using environment variables for setup and connect via the `psql` CLI from inside the container.

---

## 🎯 Objective

Learn how to start a PostgreSQL container with custom database, user, and password using environment variables and how to interact with it using the PostgreSQL CLI.

---

## 🧰 Technologies Used

- Docker
- PostgreSQL

---

## 📂 Files & Structure

This practice does not require local files. All configuration is done via command-line parameters.

---

## 📝 Steps Performed

1. Launched a PostgreSQL container with custom environment settings:

```bash
docker run -d --name postgres \
  -e POSTGRES_PASSWORD=12345 \
  -e POSTGRES_USER=docker_user \
  -e POSTGRES_DB=docker_db \
  -p 5432:5432 \
  postgres
```

2. Entered the running container:
```bash
docker exec -ti postgres bash
```

3. Connected to the PostgreSQL server using `psql`:
```bash
psql -d docker_db -U docker_user
```

---

## 💡 Useful Commands

```bash
docker stop postgres
docker start postgres
docker logs postgres
docker rm -f postgres
```

---

## ✅ Expected Result

A PostgreSQL container running and ready to accept connections to:
- Database: `docker_db`
- User: `docker_user`
- Password: `12345`

---

## 🔗 References

- https://hub.docker.com/_/postgres
- https://www.postgresql.org/docs/
