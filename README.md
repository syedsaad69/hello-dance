# Hello World Dance 🕺

A single animated "Hello World" page served by nginx inside a Docker container, ready for Render.

## Files
- `index.html` – the dancing page
- `Dockerfile` – builds the container image
- `default.conf.template` – nginx config that listens on Render's `PORT`
- `.dockerignore` – files to leave out of the image

## Run locally
```bash
docker build -t hello-dance .
docker run -p 8080:10000 hello-dance
```
Open http://localhost:8080

## Deploy on Render
1. Push this folder to a GitHub repo.
2. Render Dashboard → New → Web Service → connect the repo.
3. Language: Docker. Instance type: Free.
4. Create Web Service, wait for "Live", open the `.onrender.com` link.
