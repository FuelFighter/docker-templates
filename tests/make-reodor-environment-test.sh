#!/bin/bash
g++ reodor-environment-test.cpp -g `pkg-config --libs opencv` -I/opt/ros/kinetic/include -L/opt/ros/kinetic/lib -lroscpp -lxmlrpcpp -lcpp_common -lrosconsole_log4cxx -lrosconsole_backend_interface -lrosconsole -lrostime -lroscpp_serialization -lpthread -o reodor-environment-test.out
