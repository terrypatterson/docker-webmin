# docker-webmin
Thanks to chsliu this is just a slight revision of his work. Many thanks!
dockerfile for webmin

## Building the image
```
git clone https://github.com/terrypatterson/docker-webmin.git
cd docker-webmin
docker build -t terrypatterson/webmin .
```

## Running the container
```
docker run -d -p 10000:10000 terrypatterson/webmin
```

Log into webmin and manage your server
```
http://hostname.or.ip:10000
(root:pass)
```
