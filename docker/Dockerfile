FROM nvcr.io/nvidia/cuda:12.6.2-cudnn-devel-ubuntu22.04

# build opencv with cuda
COPY ./scripts/build_opencv.sh /opt
RUN /opt/build_opencv.sh