# TFlearn deep learning library on top ofwith Tensorflow for ARM

A [Docker](http://docker.com) image for ARM devices with [TFlearn](http://tflearn.org), a modular and transparent deep learning library built on top of [Tensorflow](https://www.tensorflow.org/). It was designed to provide a higher-level API to TensorFlow in order to facilitate and speed-up experimentations, while remaining fully transparent and compatible with it.
Latest [Tensorflow 1.3.0](https://www.tensorflow.org/) an open source software library for numerical computation using data flow graphs that will let you play and learn distinct Machine Learning techniques over [Jupyter Notebook](http://jupyter.org/) an open-source web application that allows you to create and share documents that contain live code, equations, visualizations and explanatory text. Computational Narratives as the Engine of Collaborative Data Science.   

> Be aware! You should read carefully the usage documentation of every tool!

## Latest Changes
V1
-----
- TFlearn 0.3.2 + Tensorflow 1.3.0

## Details
- [Docker Hub](https://hub.docker.com/r/elswork/rpi-tflearn/)
- [Deft.Work my personal blog](http://deft.work)

## Thanks to

- [Docker Hub elswork/rpi-tensorflow container](https://hub.docker.com/r/elswork/rpi-tensorflow/)

## My Real Usage Example

In order everyone could take full advantages of the usage of this docker container, I'll describe my own real usage setup.
```sh
$ docker run -d -p 8888:8888 elswork/rpi-tflearn:latest

```
A more complex sample:
```sh
$ docker run -d -p 8888:8888 \
 -p 0.0.0.0:6006:6006 \
 -v ~/myNotebooks:/notebooks/myNotebooks \
 --restart=unless-stopped \
 elswork/rpi-tflearn:latest
```
Point your browser to `http://localhost:8888`

First time you open it, you should provide a Token to log on you cand find it with this command:

```sh
$ docker logs container_name
```

With the second example you can run TensorBoard executing this command in the container:

```sh
$ tensorboard --logdir=path/to/log-directory --host=0.0.0.0
```
And pointing your browser to `http://localhost:6006`
