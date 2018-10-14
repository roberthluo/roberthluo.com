---
title: "Firefox Netflix"
Description: ""
date: 2018-10-14T14:53:05-04:00
draft: false
thumbnail: "/images/pickles.jpg"
Tags:
  - firefox
  - netflix
  - amazon prime
  - h264
  - codec
---

# Netflix and Prime Video unplayable in Firefox

So I got a new computer recently (Dell XPS 15) and tried to watch some HD netflix on it since is a 4k screen.

I thought it was quite strange that it did not work off the box. Off to Google we go. First I enabled DRM on firefox and installed OpenH264 Video Codec provided by Cisco Systems, Inc. in about:addons. I opened up Prime Video and it also gave me a generic error. At a loss of what to do next, I sheepishly installed Chrome and watched Annihilation (Good Movie btw).

I opened Neflix in Firefox and it still gave me a f7355 error. After a bit more searching, I suspected that the codec might not be installed in fedora, and I booted onto my Windows partition to check. I was right. The same version of Firefox - 62.0.1 was working in Windows, but not in Fedora 28. So I tried to see if which codec was missing from firefox. 

Luckily, Youtube has a [nifty little tester](https://www.youtube.com/html5/). Here I realized that h.264 was still not enabled. 

Finally, I got the solution. I had to install the correct codecs on Fedora and enable the RPM fusion repo.


```
su -c 'dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'

sudo dnf install ffmpeg-libs
```

If you go back to the [Encoding Tester](https://www.youtube.com/html5/), you should see all encodings enabled.

![Image of Working](https://github.com/roberthluo/roberthluo.com/tree/master/static/img/blog/firefox-netflix/netflix-work-for-it.png)

Ahhh finally...




References:
https://ask.fedoraproject.org/en/question/95637/h264-videos-not-working-in-firefox/
