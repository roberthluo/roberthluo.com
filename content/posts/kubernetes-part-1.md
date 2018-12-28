---
title: "Kubernetes Part 1"
Description: ""
date: 2018-12-25T12:21:43-05:00
draft: false
Tags:
  - kubernetes
  - linux foundation
  - distributed systems
  - docker
  - containerization
---

## First of all, why Kubernetes?
In Greek, the word means Helmsman.
Kubernetes or K8s is used to orchestrate containers, connecting them through different hosts, different machines, scaling and deploying applications without downtime. It is so power simply because it abstracts away an extremely layer for many developers, while allowing easy customization for different needs. 

The architecture of K8s is highly different from how to traditional environment would work for an application. If a application requires more resources to handle more traffic, it will be moved to a larger server and the application will need to be tuned for performance. If the application scales at an exponential pace, it will have to move on to bigger and more dedicated hardware. With K8s, it usess microservices, which are many small servers to handle the numerous requests. Instead of a few Apache web server with many httpd daemons to respond to the traffic, it will be many nginx servers.

Kubernetes communication and configuration information is stored in YAML format, and K8s itself is written in Golang.

To understand Kubernetes, we must first understand Docker - it is a way to package, ship and deploy applications. K8s just manages them at scale and runs it in a distributed fashion.

High Level Architecture of Kubernetes:

![Image of Working](https://raw.githubusercontent.com/roberthluo/roberthluo.com/master/static/img/blog/kubernetes-series/kubernetes-architecture.png)


K8s is composed of a central manager (primary) and worker nodes (replica). This manager runs the API server, a scheduler, some controllers and a storage system.
Kubernetes exposes a API, and we can use kubectl commands to communicate with this API.

kube-scheduler managers the requests for running containers going into the API and delegates to the correct node.

There are two processes in the node of each cluster:

* kubelet - recieves requets to run containers, manages resources
* kube-proxy - creates and manages networking rules to expose the container to the network

There is a important concept central to k8s - Pods. A Pods is an object that consists of one or more containers which share an IP address, access to storage and namespace. Usually there a container in the Pod runs the main application, while there may be smaller containers to support the main application.

Master Node (Primary Node):
contains the kube-apiserver, kube-scheduler and etcd database. Used to run server and manager processes for the cluster.

kube-apiserver:
Services REST operators and provides information about cluster's shared state. All actions are accepted and validated by this agent and it is the only connection to the etcd database

kube-scheduler:
a scheduler using an algorithm to determine which node will host the Pod of containers (can be customized).

etcd:
A high available key-value store, extremely persistent. There is a master database, along with follower databases.

Controllers are use the manage the orchestration. Each controller pings the kube-apiserver for a particular object state until the declared state matches the current state.

ReplicatSet:
A controller that deploys and restart containers until there are the required about of containers running. Deployments are used to ensure that resources are available before deploying a ReplicaSet.

Job:
Single or recurring tasks, can also be a CronJob (scheduled by time)

kube-controller-manager:
A daemon that interacts with kube-apiserver to determine state of the cluster. if the state does not match the desired, the kube-controller-manager will try to match the desired state using the controller.


