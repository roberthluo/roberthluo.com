---
title: "Let's Encrypt"
date: "2017-11-12T09:40:19+09:00"
description: "How I used Let's Encrypt on my site and how it works"
draft: false
tags:
  - Let's Encrypt
---

In 2016, I attended a conference and learned about HTTPS and certification from [Jeff Hodges](https://twitter.com/jmhodges).
Jeff helped launch Let's Encrypt, with backing from Mozilla and EFF to make a free, non-profit Certificate Authority. I used Let's Encrypt to get a certificate for this site's domain. (You can see the HTTPS on the search bar right!)

{{<youtube id="Crbf76AhbaQ">}}

First a few definitions:

Certificate Authority - Entity that issues digital certificates. It acts as a trusted third party for the owner of the certificate and the party using the certificate. It can be non-profit, governmental organizations or private corporations.

HTTP - Hypertext Transfer Protocol is an application protocol, and used as the the foundation for the Internet.

HTTPS - Hypertext Transfer Protocol Secure, it is almost the same as HTTP, but the all communication between browser and websites are encrypted. It is usually used for sensitive online transactions like banking or online shopping. If those sites do not have HTTPS, you should NOT use it.

How does HTTPS work?
It uses two secure protocols to encrypt communications SSL (Secure Sockets Layer) or TLS (Transport Layer Security). These secure protocols both use a public and a private key to encrypt communications.

When you request a HTTPS connection to a webpage, the website will send a SSL certificate to your browser. The SSL certificate contains the public key and based on this, your browser and website will initiate the 'SSL handshake'.


### How Let's Encrypt works:

https://letsencrypt.org/how-it-works/

I am going to rehash this into my words, for easy digestion and for my own understanding.
Let's Encrypt uses the ACME protocol (Automated Certificate Management Environment). This is a protocol that automates interaction between certificate authorities and user's web servers.

There are 2 steps on the Let's Encrypt process.
1. Certificate Agent proves to CA that the web server controls the domain
2. Agent requests, renews, revokes certificates for the domain

Domain Validation
First time the agent interacts with Let's Encrypt, t generate a new key pair and sends to Let's Encrypt that the server controls the CA.
Now the CA checks the signature and makes sure that the file downloaded from the server has the expected content.

Certificate Issuance and Revocation
If I recall correctly, you would need to renew your certificate every 3 months and will be reminded by a automated email.
With the authorized key pair, the web Server asks Let's Encrypt to issue certificate with it's public key.
If the Let's Encrypt CA verifies the signature within the private key that corresponds with the public key in the CSR (Certificate Signing Request), it will issue a certificate back to the agent. Now if the Let's Encrypt CA verifies that that the request is revoked, it will send that information back to the browser.

### Certbot

I am using shell access, so Let's Encrypt recommends using the Certbot ACME client.
Certbot is an automated bot to create and validate the Certificate Agent on your server.

https://certbot.eff.org/docs/intro.html
