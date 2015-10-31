bmst/pencil
===========

Pencil. The cool mockup program.

Description
-----------

This is just a default install of the pencil, with the following addons already available for installation (in the /extra/ folder):
* [Pencil Material Template](https://github.com/DaniGuardiola/pencil-material-template/)
* [Material Icons for Pencil](https://github.com/nathanielw/Material-Icons-for-Pencil/)
* [Android Lollipop Pencil Stencils](https://github.com/nathanielw/Android-Lollipop-Pencil-Stencils/)
* [Bootstrap Pencil Stencils](https://github.com/nathanielw/Bootstrap-Pencil-Stencils/)

Running
-------

You need Linux.

```shell
docker run \
    -e DISPLAY="$DISPLAY" \
    -e UID=$(id -u) \
    -e GID=$(id -g) \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v ${HOME}:/home/raptor \
    -v /usr/share/themes/:/usr/share/themes:ro \
    bmst/pencil
```

In order to also get the theme correctly, you need to link it in your home folder.

For example:

```shell
ln -s /usr/share/themes/Greybird/gtk-2.0/gtkrc ~/.gtkrc
```


