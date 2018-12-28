---
title: "Kubernetes Part 2"
Description: ""
date: 2018-12-26T12:21:43-05:00
draft: false
Tags:
  - kubernetes
  - linux foundation
  - distributed systems
  - docker
  - containerization
  - readinessProbe
  - livenessProbe
  - cri
  - rkt
---

Kubernetes is closely linked with Docker, since it is the main containerization application. However, there has been a trend to building with vendor neutral features and not build the Kubernetes ecosystem mainly on the Docker system.

A container runtime is the component that runs the containerized application on request, which by default is the Docker Engine.

A container runtime interface (CRI) allows integration of container runtimes with kubelet.

### Important terms:
------------

_rkt_ is a CLI for running containers, and deploys immutable pods.

_cri-o_ is a implementation of CRI to enable using _OCI_ (Open Container Initiative) compatible runtimes.

_containerd_ is used to expose low level primitives

* minimal CLI
* embedded into larger systems
* runs containers in accordance to _OCI_

_Containerization of an Application_:
While all applications can be containerized, it makes more sense to containerize applications that are stateless and transient.

_Multi-Container Pods_:
For some applications, it does not make sense to create a new image to add functionality like logging. So we can create a new container inside the pod. Each container must to decoupled as much as possible.

_readinessProbe_:
Sometimes a application must be initalized before it can start accepting traffic or requests, especially during scaling. We use a readinessProbe to ensure that a container will not accept traffic until the probe returns the container as a healthy state. There are many different probs. One prob fails on exec unless ready, and another uses an HTTP GET on a predefined port and path. A TCP Socket will attempt to open a socket a predetermined port and keep trying until it succeeds.

_livenessProbe_:
A livenessProbe continuously checks the health of a container and ensures it can accept traffic, and if it fails for any reason, the container is terminated. If the container is under a Kubernetes controller, a replacement is respawned.

