# This is template for running the multiple process in docker using hydra and node

# setup postgresql db

docker run \
  -p 5432:5432 \
  --name ory-hydra-db \
  -e POSTGRES_USER=hydra \
  -e POSTGRES_PASSWORD=secret \
  -e POSTGRES_DB=hydra \
  -d postgres:9.6

hydra migrate sql --yes postgres://hydra:secret@192.168.86.24:5432/hydra?sslmode=disable

# run docker
`
docker run -it --rm -p 5002:5001 -v /Users/vtssogari/project/docker:/data test

`
### run 
` 
source /data/env.sh
supervisord -c /etc/supervisor/conf.d/supervisord.conf 
`

### supervisord -c /etc/supervisor/conf.d/supervisord.conf 

`
[supervisord]
nodaemon=true
logfile_maxbytes=0

[program:hydra]
autostart = True
autorestart = True
command=hydra serve all
stdout_logfile=/dev/stdout
stdout_logfile_maxbytes=0
stderr_logfile=/dev/stderr
stderr_logfile_maxbytes=0

[program:node]
autostart = True
autorestart = True
command=nodemon /oauth2/server/server.js
stdout_logfile=/dev/stdout
stdout_logfile_maxbytes=0
stderr_logfile=/dev/stderr
stderr_logfile_maxbytes=0
`