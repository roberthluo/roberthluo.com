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