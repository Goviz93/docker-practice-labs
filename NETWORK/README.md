# 🧪 Testing Networking Between Containers with Docker Compose

> A practice to demonstrate how to use Docker Compose to create multiple containers on a shared custom network and test connectivity between them using tools like `ping` and `ip`.

---

## 🎯 Objective

Understand how Docker Compose creates isolated networks and allows containers to communicate by hostname. Learn how to manually verify connectivity between Ubuntu containers.

---

## 🧰 Technologies Used

- Docker
- Docker Compose
- Ubuntu base images
- iproute2, iputils-ping

---

## 📂 Files & Structure

```bash
.
├── docker-compose.yml
```

---

## 📝 Steps Performed

1. Created a `docker-compose.yml` with two Ubuntu containers (`ubuntu_10` and `ubuntu_11`) connected to the same custom network `test_net`.

2. Each container installs:
   - `iproute2`: to check IP address and network interfaces.
   - `iputils-ping`: to test connectivity between containers.

3. Both containers are run in interactive mode (`tty: true`) to allow terminal access.

4. Verified container-to-container communication by:
   ```bash
   docker exec -it ubuntu_10 bash
   ping ubuntu_11
   ```

---

## 💡 Useful Commands

```bash
docker-compose up -d
docker exec -it ubuntu_10 bash
docker exec -it ubuntu_11 bash
docker-compose stop
docker-compose down
```

---

## ✅ Expected Result

Containers `ubuntu_10` and `ubuntu_11` should be able to communicate using each other's service names as hostnames (`ping ubuntu_11`), confirming that the shared network is functioning correctly.

---

## 🔗 References

- https://docs.docker.com/compose/
- https://docs.docker.com/network/
