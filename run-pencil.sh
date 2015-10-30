
docker run \
    -e DISPLAY="$DISPLAY" \
    -e UID=$(id -u) \
    -e GID=$(id -g) \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v ${HOME}:/home/raptor \
    docker-pencil-mock

