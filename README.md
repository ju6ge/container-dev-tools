Containerized Dev Tools
=======================

Wrapper scripts for common development tools. Transparently use these scripts instead of installing toolchains directly.


## Usage

The intended usage is to symlink any script you want to use to your path. For example:

``` sh
ln -s shellcheck ~/.local/bin
```

These scripts should then take precedence over locally installed tools. An can be used like installed tools.

For this to work a view assumptions have to hold true:
- Firstly containerized tools always are assumed to be used in your current working directory
- Some tools might require additional mounts or access to devices. It might be required to adjust PODMAN_ARGS to suit your needs

Only command line applications that communicate via stdio are supported. The focus of this project is to integration with code editors without installing dependency heavy toolchains.

