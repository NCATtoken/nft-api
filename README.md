Install Docker:
https://www.docker.com/get-started

Build the docker image:

```bash
docker build -t ncatapi:1.0 .
```

Run the docker image:
```bash
docker run -d --name ncatapi -p 5000:5000 ncatapi:1.0
```
