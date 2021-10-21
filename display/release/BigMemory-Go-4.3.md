---
title:  BigMemory Go 4.3  
lang: en
layout: page
keywords:
space: release
sidebar: lb2_sidebar
permalink: /display/release/BigMemory+Go+4.3.html
summary:
---



* TOC
{:toc}


### **New Features**

BigMemory Go 4.3 introduces following new capabilities:

1.  Support for Java 8
2.  Support for RedHat EL7 (server)

### Summary of Changes in 4.3.10
####    Security Updates

* Contains all security updates included in BigMemory 4.3.9.4

#### Resolved

* Contains all defect solutions included in BigMemory 4.3.9.4


### Summary of Changes in 4.3.9
####       New in Terracotta BigMemory 4.3.9

*    Java 11 officially supported (along with Java 8)
*    Command Central SPM Plugin:  Secured connections (SSL/TLS) now supported.

####     Security Updates to Third Party Libraries

*    7857 - Shiro component updated to version 1.7.0.
*    7913 - Bootstrap updated to version 4.5.2.
*    7898 - Jetty updated to version 9.4.35.
*    Various other 3rd party library updates

### Summary of Changes in 4.3.8
####   New in Terracotta BigMemory 4.3.8

*     Logging moved from (directly) "log4j" framework to "logback".

#### Resolved
* 7589 - Remove misleading warning during election
* 7760 - Optional TC property "http.enable.socket.reclaimer" introduced to enable forced extra attempts to close sockets that have encountered connectivity errors
* 7762 - Silence unnecessary logging noise

#### Known Issues

*    4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.
*    5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".


### Summary of Changes in 4.3.7
####  New in Terracotta BigMemory 4.3.7

*  Improvements and new options for Terracotta server start/stop commands to facilitate safer automation of operations

#### Known Issues

    4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.
    5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".

*   4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".

### Summary of Changes in 4.3.6.3

#### Resolved

*   7626 – Resolved issue where an unhandled java.util.ConcurrentModificationException causes Terracotta Server Array to crash.
*   7592 – Resolved issue to always consider timeout settings and propagate them explicitly to the internal HttpClient.

#### Known Issues

*   4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.

### Summary of Changes in 4.3.6

#### Resolved

*   7388 – Update httpclient libraries to resolve security vulnerability CVE-2015-5262
*   7518 – Resolved security vulnerability CVE-2015-2080

#### Known Issues

*   4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.

### Summary of Changes in 4.3.1

#### Resolved

*   5490 - User is now able to view off-line data in the TMC using IE11 browser

#### Known Issues

*   4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.  


### Summary of Changes in 4.3.0.1

#### Resolved

*   5503 - "Unresponsive script" dialog no longer appears, when connected with 560 clients.


#### Known Issues

*   4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.

#### Known Issues in 4.3.0

*   5490 - When IE 11 browser, user is unable to view off-line data in TMC.

*   5503 - "Unresponsive script" dialog pops up, when observing the 560 caches listing in the management panel in TMC.
