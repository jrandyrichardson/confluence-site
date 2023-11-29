---
title:  BigMemory Max 4.4 Release Notes and Notifications
lang: en
layout: page
keywords:
space: current
sidebar: lb2_sidebar
permalink: /display/release/BigMemory+Max+4.4.html
summary:
---

BigMemory Max delivers ultrafast access to hundreds of terabytes of in-memory data. BigMemory snaps into enterprise applications to deliver unmatched performance at any scale.

BigMemory Max supports a distributed in-memory data-storage topology, which enables the sharing of data among multiple caches and in-memory data stores in multiple JVMs. It uses a Terracotta Server Array to manage data that is shared by multiple application nodes in a cluster.

The Ehcache 2.x API can be used with BigMemory Max 4.x as a general-purpose cache/in-memory data store or a second-level cache for Hibernate. You can additionally integrate it with third-party products such as ColdFusion, Google App Engine, and Spring.

<br>

* TOC
{:toc}

<br>


## Current Release
------------------
BigMemory Max 4.4.0 (October 2022) is the latest release. It includes Ehcache 2.11.

Fixes are cumulative from version to version.

> Deprecation Notice:  As previously announced in October 2021, the BigMemory WAN Replication module and Web Sessions products have been deprecated and are no longer distributed or updated as part of BigMemory products.

<br>

## Feature Highlights
-------------------

BigMemory Max 4.4.0 introduced the following new capabilities:

*  Support for Java 11
*  Support for RedHat EL9 (server)
*  Support for Windows Server 2022
*  Provide logs in JSON format for better searchability and performance
*  Docker images with Logging as a service (LaaS) support
*  Voter process now available with Docker image
*  Various bug fixes and security fixes
* Contains all features and functionality included in [BigMemory Max 4.3.x](https://confluence.terracotta.org/display/release/BigMemory+Max+4.3)
 
<br>

# Summary of Changes 10.15
-----------------------

<br>

### 4.4.0.1
- #### Release Date: 2022/11/04
- #### Resolved
  * none  
  <br><br>
- #### Security Updates to Third Party Libraries
  * [TAB-8200] Reflected Cross-Site Scripting
  * [TAB-8202] Improper Error Handling
  * [TAB-8203] Banner Grabbing
  * [TAB-8204] Server-side request forgery
  * [TAB-8241] Vulnerable 3rd Party Component Shiro used
  * [TAB-8226] Vulnerable 3rd Party Component Jackson Databind used

### 4.4.0.2
- #### Release Date: 2022/12/30
- #### Resolved
  * [TAB-8263]TMC shows blank page after installing Terracotta upgrade
  * [TAB-8261] Ascending function not working in terracotta query while fetching data.  
  <br><br>
- #### Security Updates to Third Party Libraries
  * none
  
### 4.4.0.3
- #### Release Date: 2023/02/10
- #### Resolved
  * none  
  <br><br>
- #### Security Updates to Third Party Libraries
  * [TAB-8280] Vulnerable 3rd Party Component shiro-core and jackson-databind updated
  
### 4.4.0.4
- #### Release Date: 2023/07/12
- #### Resolved
  * Update file containing docker image 3rd party components
  <br><br>
- #### Security Updates to Third Party Libraries
  * [TAB-8393] CVE updates of json-smart
  * [TAB-8384] Vulnerable 3rd party component Guava updated
  * [TAB-8363] Vulnerable 3rd party component Eclipse-Jetty updated
  * Multiple 3rd party library updates
    *   jetty 10.0.15
    *   jackson-databind 2.15.2
    *   jersey 2.39.1
    *   guava 32.0.1-jre
    *   csrfguard 4.3.0
    *   logback 1.2.12
    *   hamcrest 2.2
    *   commons-io 2.13.0
    *   jaxb-runtime 2.3.8
  
### 4.4.0.5
- #### Release Date: 2023/08/11
- #### Resolved
  * none  
  <br><br>
- #### Security Updates to Third Party Libraries
  * [TAB-8435][TAB-8436] Vulnerable 3rd party component Shiro updated
  * Other 3rd party library updates
    *   guava
    *   commons-codec
    *   commons-lang3
    *   jersey
  
### 4.4.0.6
- #### Release Date: 2023/10/04
- #### Resolved
  * [TAB-8276] Fix ConcurrentModificationException at org.terracotta.offheapstore.disk.storage.FileBackedStorageEngine.getOccupiedMemory
  <br><br>
- #### Security Updates to Third Party Libraries
  * [TAB-8485] Vulnerable 3rd party component Eclipse Jetty updated to 10.0.16
  
### 4.4.0.7
- #### Release Date: 2023/10/24
- #### Resolved
  * none  
  <br><br>
- #### Security Updates to Third Party Libraries
  * Third-party library upgrades:
    *   jetty to 10.0.17
    *   jackson to 2.15.3
    *   guava to 32.1.3-jre
    *   commons-io to 2.14.0
    *   rest-assured to 5.3.2


<br><br>

# Notes
-------

* Terracotta BigMemory 4.x and Terracotta 10.x clients may be used simultaneously in the same application by ensuring ClassLoader isolation when initializing at least one of the clients.
