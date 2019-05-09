From fuelfighter/ff-opencv:latest

ENV DEBIAN_FRONTEND noninteractive
ENV APT "apt-get -yqq -o=Dpkg::Use-Pty=0"

RUN $APT update && \
  $APT install --no-install-recommends apt-utils && \
  $APT upgrade && \
  $APT install build-essential tmux vim htop iputils-ping

# SDL
RUN $APT update && \
  $APT install libsdl2-dev freeglut3-dev libglew-dev libeigen3-dev libsoil-dev

# Debug
RUN $APT update && \
  $APT install gdb valgrind

## For lidar
RUN $APT update && \
  $APT install libeigen3-dev \
  libvtk6-dev

RUN $APT update && \
  $APT install \
  ros-kinetic-tf2-geometry-msgs \
  ros-kinetic-tf \
  ros-kinetic-tf-conversions \
  ros-kinetic-geodesy ros-kinetic-pcl-ros ros-kinetic-nmea-msgs ros-kinetic-libg2o \
  ros-kinetic-rviz
  #ros-kinetic-pcl-ros \
  #ros-kinetic-pcl-conversions \
  #ros-kinetic-pcl-msgs \
  #python-vtk \
  #tcl-vtk

ADD config.sh /root/config.sh
ENTRYPOINT /bin/bash -c '. /ros_entrypoint.sh && . /root/config.sh && cd $WORKDIR && /bin/bash'
