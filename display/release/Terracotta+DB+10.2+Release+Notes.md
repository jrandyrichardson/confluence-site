---
title:  Terracotta DB 10.2 Release Notes  
lang: en
layout: page
keywords:
tags:
sidebar: lb2_sidebar
permalink: /display/release/Terracotta+DB+10.2+Release+Notes.html
summary:
---

Terracotta DB is a distributed in-memory data management solution for both operational storage and analytical processing.  Terracotta DB has powerful query and computation capabilities, leveraging native JDK features such as Java Streams, collections, and functions. It supports the following sub-systems:

*   A storage sub-system fronted by TCStore API
    
*   A caching sub-system fronted by the next generation Ehcache API which includes and extends JSR 107
    

Both sub-systems are backed by the distributed Terracotta Server, which provides a common platform for distributed in-memory data storage with scale-out, scale-up and high availability features.



* TOC
{:toc}



-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Feature Highlights
------------------

*   AWS as a supported platform for Terracotta DB
*   Terracotta DB now supports docker-based container orchestration using Kubernetes
*   Advanced support for resilient failover through improved "Failover-tuning" option
*   Resiliency support for improved re-connection for both Ehcache and TCStore clients
*   Security enhancements including SSL support for Encryption and Authentication
*   SQL-like query capability using new Terracotta Textual Query Language 
*   Ad Hoc Query capability within Terracotta Management Console with new Terracotta DB Explorer
*   Numerous operational usability enhancements including Latency statistics and Query statistics monitoring

# Summary of Changes 10.2.0.4
---------------------------

### Resolved

*   3891 – 10.2 client is now able to connect to 10.3 server
*   3834 – Enabled voter to be able to connect to secure clusters

### Known Issues

*   3119 - Cluster tool fails to connect to server when the bind address is different from host

# Summary of Changes 10.2.0.3
---------------------------

### Resolved

*   3417 – Corrected the exception raised when failing to create a TCStore index due to insufficient memory availability.
*   3290 – Resolved issue where TMC may incorrectly display ACTIVE state for a Terracotta DB server which is shutdown.

### Known Issues

*   3119 - Cluster tool fails to connect to server when the bind address is different from host

# Summary of Changes 10.2.0.2
---------------------------

### Resolved

*   3065 – Resolved NPE in FRS when restarting standalone TCStore
*   3066 - Resolved hybrid storage mode race condition that may occur between appender and reader threads for doing fsync when there are read and writes in parallel; which then may lead to server crash.
*   3152 - The security documentation updated with information on certificate rotation

### Known Issues

*   3119 - Cluster tool fails to connect to server when the bind address is different from host

# Summary of Changes 10.2.0.1
---------------------------

### Resolved

*   2450 - Two servers in a stripe can be mistakenly displayed as ACTIVE in TMC
    
*   2801 - "common name" in the server’s TLS/SSL certificate is not validated properly
    
*   2966 - Cluster tool "status" command shows inconsistent stripe contents
    
*   2969 - ipwhitelist-reload returns success even if the command fails
    
*   2993 - Improve impact of thread interrupt during reconnection
    
*   3013/3138 – Increase the default of cluster-tool connection to server timeout and added option to control this timeout in cluster-tool command line
*   3014 - fixed multiple cases where reconnect can fail
    
*   3022 - Reconnect attempts should use a distinct timeout
    

# Notes:
------

*   Terracotta BigMemory 4.x and Terracotta DB 10.x clients may be used simultaneously in the same application by ensuring ClassLoader isolation when initializing at least one of the clients.


