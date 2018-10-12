# docker-templates

The config file in each template image (for instance [docker-template/config.sh](docker-template/config.sh)) specifies name and owner of the image template.

To pull an image template, run `docker pull <image-id>`, for instance `docker pull fuelfighters/docker-template`.

To build a template image, run the build_docker script (for instance [./docker-template/build_docker.sh](docker-template/build_docker.sh)).

To run a template image, run the run_docker script (for instance [./docker-template/run_docker.sh](docker-template/run_docker.sh)).

The run_docker script will mount the directory below the image template directory it is located in to the workdir specified in the [config file](docker-template/config.sh).
This also serves as the entrypoint of the container.

Tests for the templates are located in [tests/](tests).
