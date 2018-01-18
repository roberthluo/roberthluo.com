---
date : "2017-05-05T15:44:04+02:00"
title : "Password managers Part 1: an introduction!"
description : "Different Password managers and their strengths"
categories : "Security"
tags:
  - Security
---

Setting Up a Password Manager

With most people realizing how important passwords are and the lack of ability of most humans to memorize unique more than 16 character password that adds at least one numeric, alphabetic (upper and lower case) and special case character, password managers appear to be the solution.

A password manager generates these passwords for you, and all you have a do is memorize 1 strong password. You can use the app to access the passwords you need to login for Gmail, Facebook etc. It will make accessing your account extremely hard be guessed and a strong defense against phishing, malware and against being cracked.

tl;dr

    I am dumb dumb, no need to memorize many strong password, only one.

Popular Password Managers:

The password managers below all work the same:

    Hash your master password
    Sync functionality with encrypted database
    Use AES 256 encrypted database

Lastpass: https://lastpass.com Benefits

    Browser integration
    Automatic password changes/logins
    Country Restriction Disadvantages
    More likely to be compromised with browser plugin
    Need to host it on cloud (Dropbox/Google drive)
    Cost money $1/month
    Was compromised https://blog.lastpass.com/2015/06/lastpass-security-notice.html/

Passwordstate: https://www.clickstudios.com.au/ Benefits

    Free for up to 5 users Disadvantages
    Consistently updated (Monthly builds)
    Enterprise directed

Keepass:http://keepass.info/ Benefits

    Open Source
    Complete Control
    Customizable
    Stored locally

Disadvantages

    Relatively Ugly UI (fixed by https://github.com/keeweb/keeweb)
    More tinkering

Dashlane: https://www.dashlane.com/ Benefits

    Clean UI
    Integration with common apps
    Mobile Friendly Disadvantages
    Cost money for important features (Secure account backup, 2-factor authentication (U2F))

This wiki explores the different types of password managers. Most of it boils down to convenience vs security.

I am using keePass for the reasons above. I value control and I do not like to sync my passwords.
KEEPASS

First to start off, create a master password in your head. Try to spend a few days to memorize it before you start changing anything. It should be pretty long, a good estimate is that it should contain 25+ characters. DO NOT use a password you have used in the past. You can add numbers and other special characters into the password. That is up to you. Above all else, it should be memorable.

But, as this answer states: https://security.stackexchange.com/a/29865/148369

Strong property has inverse relation with memorable.

Example: accuracycrummiest 334 denatured waltz Salami 10

The example above is 43 characters long, and contains alphanumeric characters. Disclaimer: DO NOT use this, and no, this is not my password.

I used this site to help with word choice: https://www.eff.org/files/2016/07/18/eff_large_wordlist.txt

I have downloaded a keeWeb application (I personally find the UI nicer)

```bash

[robert@localhost Downloads]$ unzip KeeWeb-1.5.4.linux.x64.zip /home/<username>/Password-manager

[robert@localhost Downloads]$ cd /home/<username>/Password-manager

[robert@localhost Password-manager]$ ./KeeWeb

[robert@localhost Password-manager]$ sudo dnf install keepass

```

Now it is just easy UI work from here.

After typing in the fields and hitting save, you can add passwords within your file.


This file is portable! You can send it to yourself through email, or keep a localized version on your phone. That will be saved for part 2.
