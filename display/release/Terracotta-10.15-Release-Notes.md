---
title:  Terracotta 10.15 Release Notes  
lang: en
layout: page
keywords:
space: current
sidebar: lb2_sidebar
permalink: /display/release/Terracotta+10.15+Release+Notes.html
summary:
---

* TOC
{:toc}

<br>

Terracotta provides distributed in-memory operational data storage and caching for highly concurrent use cases requiring low and predictable latency.

The Terracotta 10.x Enterprise Edition offering includes the following:

   *  Distributed Caching capabilities via Java's most widely used cache, Ehcache 3.x API 
   *  Distributed In-Memory Operational Data Storage capabilities via the TCStore API
   *  Distributed In-Memory Data Management with fault-tolerance, and both horizontal and vertial scaling via Terracotta Server
   *  In memory off-heap storage - take advantage of all the RAM in your server and your client applications without GC pauses
   *  Terracotta Management Console for monitoring and managing your Terracotta cluster, and the workload that you've thrown at it

<br>

# Current Release
------------------
Terracotta 10.15 (October 2022) is the latest release. It includes Ehcache 3.10.

Fixes are cumulative from version to version.

<br>

# Feature Highlights
------------------

The Terracotta 10.15 release builds upon the enterprise readiness features and analytical capabilities of past releases, by improving operational usability and performance. Some of the notable features of Terracotta 10.15 include:

*  Support for RedHat EL9 (server)
*  Support for Windows Server 2022
*  Dataset import-export functionality  
*  Provide logs in JSON format for better searchability and performance.
*  Docker images with Logging as a service (LaaS) support
*  Voter process now available with Docker image
*  Various bug fixes and security fixes

<br>

# Summary of Changes 10.15
-----------------------

### New in Terracotta 10.15.0.0

* Dataset import-export functionality can be exported to both Parquet and TSON file formats.  Data from a TSON-formatted file can be imported into a dataset (Parquet import not supported).  The import-export operations can be performed through a new CLI import-export tool or through an end-user built client making use of the new import-export library.



### Security Updates Addressed and Third Party Library Updates

*  CVE-2022-2053 - Vulnerable 3rd Party Component Undertow updated
*  Updates to spring.boot, jackson, snakeyaml libraries


<br>

# Notes
-------

* Terracotta BigMemory 4.x and Terracotta 10.x clients may be used simultaneously in the same application by ensuring ClassLoader isolation when initializing at least one of the clients.
