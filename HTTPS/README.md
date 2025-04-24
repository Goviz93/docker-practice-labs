# 🧪 Serving a PHP Example over HTTPS in Docker

> A practice demonstrating how to configure Apache with PHP and self-signed SSL certificates using Docker. This setup allows testing secure (HTTPS) PHP applications locally.

---

## 🎯 Objective

Learn how to serve a PHP application over HTTPS using Apache and Docker. This includes creating SSL certificates, configuring Apache for SSL, and serving PHP content.

---

## 🧰 Technologies Used

- Docker
- Apache2
- PHP
- OpenSSL

---

## 📂 Files & Structure

```bash
.
├── Dockerfile
├── docker.key
├── docker.crt
├── ssl.conf
└── html-ssl/
    └── index.html
```

---

## 📝 Steps Performed

1. Generated self-signed SSL certificates using OpenSSL:
   ```bash
   openssl req -new -newkey rsa:2048 -days 365 -nodes -x509 -keyout docker.key -out docker.crt
   ```

2. Wrote a `Dockerfile` that:
   - Installs Apache, PHP, and the SSL module.
   - Enables SSL with `a2enmod`.
   - Copies HTML files and certificates into the image.
   - Replaces the default Apache SSL configuration with a custom `ssl.conf`.
   - Adds a test PHP file with `phpinfo()` output.

3. Built the Docker image:
   ```bash
   docker build -t apache_ssl:v1 .
   ```

4. Ran the container mapping port 443 inside the container to port 9091 on the host:
   ```bash
   docker run -d --name apache_ssl -p 9091:443 apache_ssl:v1
   ```

5. Opened the browser and accessed the secure Apache server:
   ```
   https://localhost:9091
   ```

6. Verified the output of `phpinfo()` and SSL security (may require accepting the self-signed cert warning).

7. Managed the container lifecycle using:
   ```bash
   docker stop apache_ssl
   docker start apache_ssl
   ```

---

## 💡 Useful Commands

```bash
openssl req -new -newkey rsa:2048 -days 365 -nodes -x509 -keyout docker.key -out docker.crt
docker build -t apache_ssl:v1 .
docker run -d --name apache_ssl -p 9091:443 apache_ssl:v1
docker stop apache_ssl
docker start apache_ssl
```

---

## ✅ Expected Result

When visiting `https://localhost:9091`, the browser should display the output of the PHP `phpinfo()` function, confirming that Apache and PHP are working over a secure HTTPS connection.

---

## 🔗 References

- https://major.io/p/generate-self-signed-certificate-and-key-in-one-line/
- https://httpd.apache.org/docs/current/mod/mod_ssl.html
- https://www.php.net/manual/en/function.phpinfo.php
