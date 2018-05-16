# Synopsys

Docker image for [teleport](https://github.com/vadv/teleport)

# Usage
## Via docker-compose

```
version: '3'
services:
  teleport:
    image: docker-teleport
    volumes:
      - "./:/tmp/teleport"
    env_file:
        - teleport.env
    networks:
      default:
        ipv4_address: 172.22.0.2


networks:
  default:
    driver: bridge
    ipam:
      driver: default
      config:
      - subnet: 172.22.0.0/16


```


## Configuration

Since there is no configuration file for teleport the one may use environment variables for configure it. 

For example:
```
 $ cat ./teleport.env:

LISTEN_HTTP=172.22.0.2:80
PROXY=socks5://user:password@myproxy.example:8080
LISTEN_HTTPS=172.22.0.2:443
SSL_KEY=/tmp/teleport/server.key 
SSL_CRT=/tmp/teleport/server.crt
```

Please see teleport configuration flags for explanation.

