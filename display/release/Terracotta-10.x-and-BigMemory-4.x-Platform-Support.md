---
title:  Terracotta 10.x and BigMemory 4.x Platform Support  
lang: en
layout: page
keywords:
space: current
sidebar: lb2_sidebar
permalink: /display/release/Terracotta+10.x+and+BigMemory+4.x+Platform+Support.html
summary:
---

The platforms listed on this page are currently certified for use with commercial Terracotta product editions.  As a 100% Java solution, Terracotta should run without issues on Java platforms for which it is not certified as well.  If you have any questions about a certified or non-certified platform, contact us in one of the following ways:

*   Send email to [info@terracotta.org](mailto:info@terracotta.org)
*   Post a question on our community forums

Terracotta is comprised of two different components: the client that integrates with your application, and the server (the server array) that typically runs on a set of separate machines in production.  The client (ehcache) is designed to run on many platform/JDK/container combinations. The server runs directly as a Java process (without a container).

The server is a process that runs directly in a JVM.  JVM heap-space requirements vary by workload. While some small workloads can be handled in 2GB of heap, most workloads, especially with higher transaction rates, or usage of search features will require at minimum 4GB of heap space.

<br>

* TOC
{:toc}

<br>
<hr>

## Terracotta
----------------------

| **PRODUCT**                                           | 2017 | 2018 | 2019 | 2020 | 2021 | 2022 | 2023 | 2024 |
|:------------------------------------------------------|-----:|-----:|---:|---:|---:|---:|---:|--:|
| Terracotta<br>Ehcache                                 | 10.1<br>3.4.1   | 10.3<br>3.6.3   | 10.5<br>3.8.1   | 10.7<br>3.9.9   | 10.11<br>3.9.9    | 10.15<br>3.10.1 | 10.15<br>3.10.1 | 11.1<br>3.11.1 |
| **PLATFORM SUPPORT**                                  |       |       |  |  |  |  |  |  |
| Windows Server 2012 (Datacenter and Standard Edition) |       |   X   | X | X |  |  |  |  |
| Windows Server 2016 (Datacenter and Standard Edition) |       |   X   | X | X | X | X | X | X |
| Windows Server 2019 (Datacenter and Standard Edition) |       |       | X | X | X | X | X | X |
| Windows Server 2022 (Datacenter and Standard Edition) |       |       |  |  |  | X | X | X |
| Windows 8 (Pro and Enterprise)                        |       |   X   |  |  |  |  |  |  |
| Windows 10 (Pro and Enterprise)                       |       |   X   | X | X | X | X | X | X |
| Windows 11 (Pro and Enterprise)                       |       |       |  |  |  | X | X | X |
| Suse Linux Enterprise Server 15 SPx                   |       |       | X | X | X | X | X | X |
| Suse Linux Enterprise Server 12 SPx                   |       |   X   | X | X | X |  |  |  |
| Red Hat Enterprise Linux Server 7.x                   |       |       | X | X | X | X | X | X |
| Red Hat Enterprise Linux Server 8.x                   |       |       | X | X | X | X | X | X |
| Red Hat Enterprise Linux Server 9.x                   |       |       |  |  |  | X | X | X |
| Centos 7.x                                            |       |   X   | X | X |  |  |  |  |
| Ubuntu 18.07                                          |       |       |  | X |  |  |  |  |
| **BROWSER SUPPORT**                                   |       |       |  |  |  |  |  |  |
| Microsoft Edge (latest)                               |       |       |  | X | X | X | X | X |
| Microsoft IE 11.x                                     |       |       |  | X | X |  |  |  |
| Mozilla Firefox ESR 91                                |       |       |  |  | X | X | X | X |
| Mozilla Firefox ESR 78                                |       |       |  |  |  | X | X | X |
| Mozilla Firefox ESR 68                                |       |       |  |  | X |  |  |  |
| Google Chrome (latest)                                |       |       |  |  | X | X | X | X |
| **JDK SUPPORT**                                       |       |       |  |  |  |  |  |  |
| Zulu 17.0 (17.0.10)                                   |       |       |  |  |  |  | X | X |
| Zulu 11.50 (11.0.12)                                  |       |       |  |  | X | X | X |  |
| Zulu 8.47 (1.8.0_261)                                 |       |       | X | X |  |  |  |  |
| Zulu 8.40 (1.8.0_222)                                 |       |       | X |  |  |  |  |  |
| Zulu 8.31 (1.8.0_181)                                 |       |   X   |  |  |  |  |  |  |
| IBM Java 1.8.0 SR6 FP11                               |       |       | X | X | X |  |  |  |

<br>

## BigMemory Max
----------------------

| **PRODUCT**                                           | 2017 | 2018 | 2019 | 2020 | 2021 | 2022 | 2023 | 2024 |
|:------------------------------------------------------|-----:|-----:|---:|---:|---:|---:|---:|---:|
| BigMemory Max<br>Ehcache                              | 4.3.4<br>2.10.4 | 4.3.6<br>2.10.6 | 4.3.8<br>2.10.8 | 4.3.9<br>2.10.9 | 4.3.10<br>2.10.10 | 4.4<br>2.11.0 | 4.4<br>2.11.0 | 4.4.1<br>2.11.1 |
| **PLATFORM SUPPORT**                                  |       |       |  |  |  |  |  |  |
| Windows Server 2012 (Datacenter and Standard Edition) |       |   X   | X | X |  |  |  |  |
| Windows Server 2016 (Datacenter and Standard Edition) |       |   X   | X | X | X | X | X |  |
| Windows Server 2019 (Datacenter and Standard Edition) |       |       | X | X | X | X | X | X |
| Windows Server 2022 (Datacenter and Standard Edition) |       |       |  |  |  | X | X | X |
| Windows 8 (Pro and Enterprise)                        |       |   X   |  |  |  |  |  |  |
| Windows 10 (Pro and Enterprise)                       |       |   X   | X | X | X | X | X | X |
| Windows 11 (Pro and Enterprise)                       |       |       |  |  |  | X | X | X |
| Suse Linux Enterprise Server 15 SPx                   |       |       | X | X | X | X | X | X |
| Suse Linux Enterprise Server 12 SPx                   |       |   X   | X | X | X |  |  |  |
| Red Hat Enterprise Linux Server 7.x                   |       |       | X | X | X | X | X | X |
| Red Hat Enterprise Linux Server 8.x                   |       |       | X | X | X | X | X | X |
| Red Hat Enterprise Linux Server 9.x                   |       |       |  |  |  | X | X | X |
| Centos 7.x                                            |       |   X   | X | X |  |  |  |  |
| Ubuntu 18.07                                          |       |       |  | X |  |  |  |  |
| AIX 7.1 (no Java 11, Java 17) webM only               |       |   X   | X |  |  |  |  |  |
| AIX 7.2 (no Java 11, Java 17) webM only               |       |   X   |  | X | X | X | X | X |
| AIX 7.3 (no Java 11, Java 17) webM only               |       |       |  |  |  | X | X | X |
| Solaris 11 (Spark 64)  webM Only                      |       |   X   | X | X | X |  |  |  |
| HP-UX 11iv3                                           |       |   X   |  |  |  |  |  |  |
| **BROWSER SUPPORT**                                   |       |       |  |  |  |  |  |  |
| Microsoft Edge (latest)                               |       |       |  | X | X | X | X | X |
| Microsoft IE 11.x                                     |       |       |  | X | X |  |  |  |
| Mozilla Firefox ESR 91                                |       |       |  |  | X | X | X | X |
| Mozilla Firefox ESR 78                                |       |       |  |  |  | X | X | X |
| Mozilla Firefox ESR 68                                |       |       |  |  | X |  |  |  |
| Google Chrome (latest)                                |       |       |  |  | X | X | X | X |
| **JDK SUPPORT**                                       |       |       |  |  |  |  |  |  |
| Zulu 17.0 (17.0.10)                                   |       |       |  |  |  |  | X | X |
| Zulu 11.50 (11.0.12)                                  |       |       |  |  | X | X | X |  |
| Zulu 8.47 (1.8.0_261)                                 |       |       | X | X |  |  |  |  |
| Zulu 8.40 (1.8.0_222)                                 |       |       | X |  |  |  |  |  |
| Zulu 8.31 (1.8.0_181)                                 |       |   X   |  |  |  |  |  |  |
| IBM Java 1.8.0 SR6 FP11                               |       |       | X | X | X |  |  |  |

<br>
<br>

  

