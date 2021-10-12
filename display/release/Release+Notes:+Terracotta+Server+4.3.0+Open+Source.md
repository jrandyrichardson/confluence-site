---
title:  Release Notes
lang: en
layout: page
keywords:
tags:
sidebar: lb2_sidebar
permalink: /display/release/Release+Notes
summary:
---

Terracotta Server 4.3 is the latest release of Open Source edition of the Terracotta Server. It includes Ehcache 2.10.0


* TOC
{:toc}


#### **New Features**

Terracotta Server 4.3 includes the following capabilities

1.  Distributed storage (limited: 1 server stripe – active with optional mirror, unlimited client nodes)
2.  Key/Value Offheap (basic RAM storage)
3.  Support for Java 8
4.  Support for RedHat EL7 (server)  
    

#### Known Issues in 4.3.0

*   4984 - Port 9520 is no longer valid.  Actual IP address will show versus the loopback one.
    
*   5557 - When large number of clients simultaneously connect with the TSA server it could result in NullPointerException and server gets terminated.
    
*   5737 - Error message when trying to start servers in active-active mode does not give meaningful information.  
      
    


