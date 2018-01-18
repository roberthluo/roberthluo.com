---
title: "DNC Hack"
date: 2018-01-08T22:14:08-05:00
draft: false
tags:
  - DNC Hack
---

# Background
DNC, or the Democratic National Committee is the governing body for the United States Democratic Party. It organizes political events and support for candidates of the Democratic party in the United States and holds a Democratic National Convention to nominate and confirm a candidate for the President of the United States. Due to the Committee’s large amount of political and sensitive information, it is an obvious candidate for attacks and data breaches. Similarly, there has also been attack on the RNC, the Republican National Committee, but attacks seem to have been foiled.

# Description
In 2016, the cyber security company CrowdStrike and other firms announced that the DNC servers had been hacked by ‘sophisticated’ hacker groups. The attackers penetrated the DNC network and gained access to entire databases, and could read all email and chat traffic. Major news networks reported that no financial, donor or personal information appears to have been accessed and it is very likely the breach was from traditional country-to-country espionage.
From the Analysis of the United States Department of Homeland Security and the Office of National Intelligence, the U.S. government was confident that the Russian government were behind the breaches to gain incrementing information about the DNC to interfere and influence the US election. They published an extensive Joint Analysis Report (JAR) on the methods and technical details regarding the tools and infrastructure used by Russian civilian and military intelligence to compromise and exploit networks.

# Technical Details
While major new organizations described the attack as ‘sophisticated’, the attacks did not include any huge exploits. The attacks included social engineering, phishing, and small malicious scripts in emails to trick victims and users into entering legitimate credentials. From the summer of 2015 to the spring of 2016, two different groups known as Attack Persistent Threat(APT) 28 and APT29 used a malicious link hosted by legitimate domains like U.S. organizations and educational institutions in a phishing campaign to activate links to malware. This malware persisted in many system and escalated many user privileges and exfiltrated emails from sensitive accounts. Using the account information and credentials from the harvested accounts, they could gain access to information privy to senior Democratic Party Members, leak to the press and publicly disclosed.
The attackers employed Injection Flaws, Server vulnerabilities and Cross-site Scripting vulnerabilities and other forms of attacks.

### Cross-site scripting vulnerabilities
From the emails attachments and links, the attackers added malicious scripts to execute authorized code in web applications hosting the emails. These Cross-site scripting vulnerabilities can provide attacks with unauthorized access to information within the email or even credentials to the email itself.

### Server vulnerabilities
The servers and systems of the DNC was exploited to allow unauthorized access to sensitive information, and its poor configuration allowed access and modification of user privileges and critical information.

### Injection Flaws
APT29 also used broad web application attack techniques to send commands to a web application system, and allowing non-administrators to control behavior. They may have used SQL injection to obtain information contained in the database, or command injection, where an untrusted user is able to send commands to operating system hosting the database.

# Damage
The damage from this Hack was widespread and may have influenced the U.S. general election, leading to the Democratic Party Nominee Hillary Clinton’s defeat and the presidency of the Republican Party Nominee Donald Trump.  It also leaked sensitive information about the Democratic party like personal information about donors including social security and credit card numbers, political strategies, and financial information of the Democratic Party.
Future protection/prevention:
Some of the prevention/protection that the U.S. government has recommended in light of this attack are general principles in cybersecurity and best practices.


# Future protection/prevention:
Some of the prevention/protection that the U.S. government has recommended in light of this attack are general principles in cybersecurity and best practices.


| Mitigation Strategies                      | Details                                                                                                                                                                                                                                               |
|--------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Patching application and operating systems | Update and patch vulnerable application and operating system. This will reduce number of exploits and security flaws available to attackers.                                                                                                          |
| Application Whitelisting                   | Whitelisting allows only specified programs to run in a system, greatly reducing security flaws and blocking all other programs, including malicious software                                                                                         |
| Restriction of Administrative privileges   | As shown from above, APT focused on gaining controls to legitimate credentials, and targeted users to highly sensitive or privileged accounts. Having stronger administrative privileges makes it more difficult for unauthorized user to gain access |
| Network Segmentation and Segregation       | Segmentation and segregation of networks into security zone helps protect sensitive information to critical services and limits damage and information stolen from network perimeter breaches                                                         |
| Input validation                           | Input validation helps prevent Injection flaws and Cross site scripting vulnerabilities                                                                                                                                                               |
| File Control                               | By having read/write access to different files, it can limit attackers from viewing or modifying critical/sensitive information                                                                                                                       |
| Firewall control                           | Proper configuration of firewalls minizines attackers to network and can block data transfer from untrustworthy sources                                                                                                                               |
| Event Logging                              | Logs can be useful to scope out attempted attacks or suspicious activity in the network. It can be used in conjunction with a incidence response plan to implement in case of an intrusion or attack                                                  |
| Staff Training                             | Since humans are frequently the victims of social engineering and phishing in emails, it is important to educate users and staff of a system to look out for suspicious emails, not click on links unless it is a verified user, etc                  |


&nbsp;
&nbsp;


Sources:
https://www.us-cert.gov/sites/default/files/publications/JAR_16-20296A_GRIZZLY%20STEPPE-2016-1229.pdfhttps://yahoo.tumblr.com/post/154479236569/important-security-information-for-yahoo-users

https://www.washingtonpost.com/news/the-switch/wp/2016/07/22/wikileaks-posts-nearly-20000-hacked-dnc-emails-online/

https://www.washingtonpost.com/world/national-security/cyber-researchers-confirm-russian-government-hack-of-democratic-national-committee/2016/06/20/e7375bc0-3719-11e6-9ccd-d6005beac8b3_story.html

https://www.wsj.com/articles/republican-national-committee-security-foiled-russian-hackers-1481850043
