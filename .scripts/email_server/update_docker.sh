docker images |grep -v REPOSITORY|awk '{print $1}'|xargs -L1 docker pull  

# watchtower
# docker run -d --name watchtower -v /var/run/docker.sock:/var/run/docker.sock v2tec/watchtower

