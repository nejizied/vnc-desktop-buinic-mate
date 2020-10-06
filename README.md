# VNC Bionic-mate


## Usage

### Build Docker Image
You can clone the repository and build the image yourself and then run with the following command:

```bash
git clone https://github.com/nejizied/docker-ubuntu-vnc-desktop-mate.git```

docker build -t vnc-desktop-bionic:mate .
```

then you can run it using the simple bash script in the repository.

https://drive.google.com/file/d/1ngo99tmhG9umtL2b8xbXhchs0FFKURi1/view?usp=sharing

### Run docker command

Or you can simply run the following command:

```bash
docker run -d --restart unless-stopped  --name desktop-mate-${user} -p ${port1}:80 -p ${port2}:5900 -e VNC_PASSWORD=${vnc_password}  -e USER=${user} -e PASSWORD=${password} -e HTTP_PASSWORD=${http_password}-e VIRTUAL_PORT=80 "$(pwd)"/opt-${user}/:/opt/ -v /dev/shm:/dev/shm -v "$(pwd)"/desktop-${user}:/home/${user} vnc-desktop-docker:bionic-mate```
