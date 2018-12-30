---
title: "Kubernetes Intro"
Description: ""
date: 2018-12-23T19:44:31-05:00
draft: false
Tags:
  - kubernetes
  - linux foundation
  - distributed systems
  - docker
  - containerization
---

For the past few months at my job, I have been using Docker for deployment automation, and Kubernetes as container orchestrator. While we have been still experimenting with scalability and ensuring robust distributed systems, we have solidly battle tested Docker and Kubernetes. My manager suggested that we take a course to fully understand the architecture behind Kubernetes. I have been studying a course offered by the [Linux Foundation](https://www.linuxfoundation.org) called [Kubernetes for Developers](https://training.linuxfoundation.org/training/kubernetes-for-developers/), which I bought at a reduced price on Black Friday.

I will be writing a series of posts during my course progress, to help explain the terminalogy and architecture in my own terms, and also maybe incorprate of [Kelsey Hightower's](https://twitter.com/kelseyhightower) extremely useful thought processes and course on Kubernetes - [Kubernetes The Hard Way](https://github.com/kelseyhightower/kubernetes-the-hard-way).

Note: There are labs and exercises in the background that I will do from both Kubernetes The Hard Way and also Kubernetes for Developers. I will be mentioning them in passing and also in reference, but I will not be focusing on them in the series of posts. I am using [Google Cloud Platform](https://cloud.google.com/) to bootstrap the Kubernetes cluster.


![Image of Kubernetes](https://upload.wikimedia.org/wikipedia/en/0/00/Kubernetes_%28container_engine%29.png)