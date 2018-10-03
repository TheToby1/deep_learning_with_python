#!/usr/bin/fish

nvidia-docker run \
-d -p 8888:8888 -p 6006:6006 \
--workdir="$PWD" \
--volume="/home/$USER:/home/$USER" \
--volume="/etc/group:/etc/group:ro" \
--volume="/etc/passwd:/etc/passwd:ro" \
--volume="/etc/shadow:/etc/shadow:ro" \
--volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
-u (id -u) \
keras:gpu