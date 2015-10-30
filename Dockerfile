FROM ubuntu:14.04
MAINTAINER Bogdan Mustiata <bogdan.mustiata@gmail.com>

RUN apt-get update -y && apt-get upgrade -y

#
# This is just a default install of the pencil, with the following addons already available
# for installation (in the /extra/ folder):
# * Pencil Material Template: https://github.com/DaniGuardiola/pencil-material-template/
# * Material Icons for Pencil: https://github.com/nathanielw/Material-Icons-for-Pencil/
# * Android Lollipop Pencil Stencils: https://github.com/nathanielw/Android-Lollipop-Pencil-Stencils/
# * Bootstrap Pencil Stencils: https://github.com/nathanielw/Bootstrap-Pencil-Stencils/

RUN apt-get install -y wget firefox && \
    cd && \
    wget https://github.com/prikhi/pencil/releases/download/v2.0.14/pencil-2.0.14-ubuntu-all.deb && \
    dpkg -i pencil-2.0.14-ubuntu-all.deb && \
    useradd -m raptor && \
    mkdir /extra && \
    cd /extra && \
    wget https://github.com/nathanielw/Android-Lollipop-Pencil-Stencils/releases/download/v1.0.0/android-lollipop-pencil-stencils-v1.0.0.zip && \
    wget https://github.com/nathanielw/Bootstrap-Pencil-Stencils/releases/download/v1.1.0/bootstrap-pencil-stencils-v1.1.0.zip && \
    wget https://github.com/nathanielw/Material-Icons-for-Pencil/releases/download/v1.1.0/material-icons-for-pencil-v1.1.0.zip && \
    wget https://github.com/DaniGuardiola/pencil-material-template/raw/master/build/pencil-material-template-mobile.zip && \
    chmod 755 /extra

ENV DISPLAY=:0
ENV UID=1000
ENV GID=1000

CMD perl -pi -e "s/raptor:x:1000:1000/raptor:x:$UID:$GID/" /etc/passwd && \
    perl -pi -e "s/raptor:x:1000:/raptor:x:$GID:/" /etc/group

USER raptor

CMD pencil

