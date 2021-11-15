---
title:  Terracotta 10.11 Release Notes  
lang: en
layout: page
keywords:
space: release
sidebar: lb2_sidebar
permalink: /display/release/Terracotta+10.11+Release+Notes.html
summary:
---

* TOC
{:toc}

Terracotta is a distributed in-memory data management solution for both operational storage and analytical processing.  Terracotta has powerful query and computation capabilities, leveraging native JDK features such as Java Streams, collections, and functions. It supports the following sub-systems:

*   A storage sub-system fronted by TCStore API
    
*   A caching sub-system fronted by the next generation Ehcache API which includes and extends JSR 107
    

Both sub-systems are backed by the distributed Terracotta Server, which provides a common platform for distributed in-memory data storage with scale-out, scale-up and high availability features.


# Feature Highlights
------------------

The Terracotta 10.11 release builds upon the enterprise readiness features and analytical capabilities of past releases, by improving operational usability and performance. Some of the notable features of Terracotta 10.11 include:

* Improvements to the Dynamic Configuration feature.
* Improvements to the ability to scale-out (horizontally) servers without downtime.

# Summary of Changes 10.11
-----------------------

### New in Terracotta 10.11.0.0
* Improvements to the Dynamic Configuration feature.
    * Warning logs when parameters do not match the loaded configuration.
    * Improved command line interface help.
    * All operator to change default location of data-dir and metadata-dir.
    * Introduce name constraints on cluster name, node name, stripe name.
* Prometheus Support.
* TMC reports exact version of each component in a cluster.
* Tool-assisted full cluster backup
* Listeners and/or API for client reconnect failures.
* API Improvements for visibility of resource usages

### Security Updates Addressed and Third Party Library Updates

* CVE-2021-22118 - spring-core updated
* Updated Jackson libraries to  2.12.4

# Notes
-------

* Terracotta BigMemory 4.x and Terracotta 10.x clients may be used simultaneously in the same application by ensuring ClassLoader isolation when initializing at least one of the clients.
