# OpenCV Python Environment with CUDA

## Requirements
- Docker Engine
- Nvidia Container Toolkit


## Normal Docker Environment

### Build the docker image

`docker build -t opencv_cuda .docker`

> [!NOTE]
> For Linux users. Change install script permission before build.  
> `chmod +x docker/scripts/build_opencv.sh`

### Open bash in container
`docker run -it -v .:/root --rm --gpus all opencv_cuda /bin/bash`