# 🧪 Using ADD in Dockerfiles

> A practice focused on using the ADD command to download and unpack remote files inside a Docker container.

---

## 🎯 Objective

Learn how to use the ADD command in Dockerfiles to download external resources and prepare them at build time.

---

## 🧰 Technologies Used

- Docker
- apache2
- unzip

---

## 📂 Files & Structure

\`\`\`bash
├── Dockerfile
\`\`\`

---

## 📝 Steps Performed

1. Created a Dockerfile based on the Ubuntu image., 2. Installed Apache and unzip tools., 3. Used the ADD command to download a ZIP archive from GitHub directly into the container.,4. Unzipped the archive into the Apache root directory., 5. Built the image and ran the container mapping port 9090 to 80.

---

## 💡 Useful Commands

\`\`\`bash
docker build -t apache_with_code:v2 ., docker run -d --name apache -p 9090:80 apache_with_code:v2, docker stop apache, docker start apache
\`\`\`

---

## ✅ Expected Result

When visiting http://localhost:9090 in the browser, the HTML site from the GitHub ZIP should be served via Apache.

---

## 🔗 References

https://docs.docker.com/engine/reference/builder/#add
