# OpenCV Python Environments with CUDA

## Requirements
- Docker Engine
- Nvidia Container Toolkit

## Docker Environment

### Build the docker image

`docker build -t opencv_cuda .docker`

> [!NOTE]
> For Linux users. Change install script permission before build.  
> `chmod +x docker/scripts/build_opencv.sh`

### Open bash in container
`docker run -it -v .:/root --rm --gpus all opencv_cuda /bin/bash`

## Devcontainer Environments
This environment Requirs [Visual Studio Code](https://code.visualstudio.com/) and [Devcontainer Extention](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers).  
After install them, please 'Reopen in container' to enter CUDA enabled OpenCV envirionment.