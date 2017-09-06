FROM elswork/rpi-tensorflow
MAINTAINER Eloy Lopez <elswork@gmail.com>
RUN pip --no-cache-dir install git+https://github.com/tflearn/tflearn.git
