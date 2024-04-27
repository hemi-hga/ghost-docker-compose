# Self-hosted ghost server

Tech stack: Docker, Traefik, Ghost, MySQL

Author: [Robert Chang](https://github.com/RobertChang0722/)

## Description

1. Install docker on your server
2. Clone this repository
3. Rename the `.env.example` to `.env`
4. Modify the `.env` file the MUST HAVE variables
5. Fill in your email in the traefik.yml file (line 23)
6. Create basic network & volume

```bash
$ docker network create traefik
$ docker network create backend
$ docker volume create ghostdata
$ docker volume create mysql
```

7. Run `docker compose up -d` to start the ghost server