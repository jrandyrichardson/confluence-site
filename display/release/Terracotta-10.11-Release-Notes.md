---
title:  Terracotta 10.11 Release Notes  
lang: en
layout: page
keywords:
space: current
sidebar: lb2_sidebar
permalink: /display/release/Terracotta+10.11+Release+Notes.html
summary:
---

Terracotta is a distributed in-memory data management solution for both operational storage and analytical processing.  Terracotta has powerful query and computation capabilities, leveraging native JDK features such as Java Streams, collections, and functions. It supports the following sub-systems:

*   A storage sub-system fronted by TCStore API
*   A caching sub-system fronted by the next generation Ehcache API which includes and extends JSR 107

Both sub-systems are backed by the distributed Terracotta Server, which provides a common platform for distributed in-memory data storage with scale-out, scale-up and high availability features.

------

<br>

Document Contents

* TOC
{:toc}

<br>

# Feature Highlights
------------------
The Terracotta 10.11 release builds upon the enterprise readiness features and analytical capabilities of past releases, by improving operational usability and performance. Some of the notable features of Terracotta 10.11 include:

* Improvements to the Dynamic Configuration feature.
* Improvements to the ability to scale-out (horizontally) servers without downtime.
* Improvements to the Dynamic Configuration feature.
  *   Warning logs when parameters do not match the loaded configuration.
  *   Improved command line interface help.
  *   All operator to change default location of data-dir and metadata-dir.
  *   Introduce name constraints on cluster name, node name, stripe name.
* Prometheus Support.
* TMC reports exact version of each component in a cluster.
* Tool-assisted full cluster backup
* Listeners and/or API for client reconnect failures.
* API Improvements for visibility of resource usages
* CVE-2021-22118 - spring-core updated
* Updated Jackson libraries to 2.12.4
  
<br>

# Summary of Changes 10.11.0
-----------------------
### 10.11.0.1
* Release Date: 2021/10/22
* Resolved
  *   5390 - Implement Rsource Monitoring for Embedded Datasets.
  *   #150 - Prevent infinite-loop as a result of missing event.
* Security Updates to Third Party Libraries
  * none

### 10.11.0.2
* Release Date: 2021/12/08
* Resolved
  *   [TDB-5469] - Support for periodic logging about server resources(offheap, disk etc.) usage 
 * Security Updates to Third Party Libraries
  * none
  
### 10.11.0.7

* Release Date: 2022/04/06
* Resolved
  * [TDB-5470] - TMC resource usage bugs
  * [TDB-5541] - Security messages are not correctly reported back to clients
* Security Updates to Third Party Libraries
  *    [TDB-5582] - CVE-2020-36518 - update jackson-databind 2.13.2.1
  *    [TDB-5590] - CVE-2022-22965 - upgrade spring beans to 5.3.18
  *    [TDB-5592] - CVE-2022-22965  - upgrade spring-core used to 5.3.18

### 10.11.0.8
* Release Date: 2022/10/14
* Resolved
  * none
* Security Updates to Third Party Libraries
  *   [TDB-5666] - CVE-2022-2053 - Vulnerable 3rd Party Component Undertow used
  *   Update spring.boot, jackson, snakeyaml

### 10.11.0.9
* Release Date: 2022/11/10
* Resolved
  * Ensure servers reach stable states before restart/termination
  * Docker enhancements and improvements
* Security Updates to Third Party Libraries
  *   Upgrade: spring-boot:2.7.5, spring-security:5.7.5

### 10.11.0.10
* Release Date: 2023/01/06
* Resolved
  * Fix MultiDiagnosticServiceProvider which was incorrectly throwing exception and implementing the needed APIs
  * Support config-tool diagnostic -output-format json
  * Support multiple `-connect-to` parameters for `config-tool import` to allow to send a cluster config file to many nodes at once (cloud)
  * Support multiple `-connect-to` parameters for `config-tool get|set|unset` to allow to pass all nodes of the cluster and find one online (cloud support)
  * Support multiple `-connect-to` parameters for `config-tool diagnostic` to allow to pass all nodes of the cluster (cloud support)
  * Support multiple `-connect-to` parameters for `config-tool activate` to allow a user to repair several modes at once by forcing a cluster topology with `-restrict`
  * Add official support for `-security-dir` in config-tool. The official  param name used by DC and server is called `security-dir`
  * Fix the voter connection logic to support public/internal addresses and source the endpoints to connect to from the topology instead of the CLI parameters. Refactoring is backward compatible.
  * Fixed Cluster#determineEndpoint(UID, Collection)
  * Further HostPort refactorings to decouple the parsing from the utility classes with the introduction of HostPort#parse methods
  * Core already has some default connection and operation timeouts for diagnostic port, so use them if we set null
  * Don't throw on failure to connect during registeration attempts
  * Reordered help usage for better reading
  * [TDB-5673] DC fixes for Java 17 InetSocketAddress
  * Client-Server compatibility checking
  * AttachSecuredNode1x3IT, SetCommand1x2IT, SetCommand2x2IT: let server states settle before restarting cluster
  * DataLoss1x3IT: wait for a passive before killing the active

* Security Updates to Third Party Libraries
  * Upgrade to Jackson Databind 2.13.4.2
  * Update to new Spring static web-resources location

### 10.11.0.11
* Release Date: 2023/02/16
* Resolved
  * none
* Security Updates to Third Party Libraries
  * [TDB-5724] Vulnerable 3rd party component Jackson-databind updated

### 10.11.0.12
* Release Date: 2023/04/26
* Resolved
  * [TDB-5529]  Gracefully return on thread interruption (like on a TimeoutException)
  * Improved asynchronous client behaviors
  * In operator DSL and Intrinsics implementation
  * Align stream ids to better correlate across stripes
  * Docker >= v23 compatibility
* Security Updates to Third Party Libraries
  * [TDB-5767] Vulnerable 3rd party component Spring-webmvc updated to 5.3.27
  * [TDB-5762] Vulnerable 3rd party component Snakeyaml updated to 2.0
  * Other library updates:
    * logback-classic 1.2.12
    * logback-core 1.2.12
    * jackson-module-parameter-names 2.13.5
    * undertow-core 2.2.24.Final
    * undertow-servlet 2.2.24.Final
    * undertow-websockets-jsr 2.2.24.Final
    * snakeyaml 2.0
    * Spring Boot Actuator AutoConfigure 2.7.11
    * Spring Boot Configuration Annotation Processor 2.7.11
    * Spring Boot Layers Tools 2.7.11
    * Spring Boot Actuator 2.7.11
    * Spring Boot AutoConfigure 2.7.11
    * spring-context-support 5.3.27
    * spring-security-config 5.7.8
    * spring-security-core 5.7.8
    * spring-security-crypto 5.7.8
    * spring-security-web 5.7.8
    * Spring Boot 2.7.11
    * spring-aop 5.3.27
    * spring-beans 5.3.27
    * spring-context 5.3.27
    * spring-core 5.3.27
    * spring-expression 5.3.27
    * spring-jcl 5.3.27
    * spring-messaging 5.3.27
    * spring-web 5.3.27
    * spring-webmvc 5.3.27
    * spring-websocket 5.3.27

### 10.11.0.13
* Release Date: 2023/06/09
* Resolved
  * none
* Security Updates to Third Party Libraries
  * [TDB-5824] Update vulnerable 3rd party component Spring-boot to 2.7.12

### 10.11.0.14
* Release Date: 2023/07/04
* Resolved
  * Improve DefinitionInterner Cleaner GC Behavior
  * Download Docker PDFs from iData directly
  * TMS Json refactorings
 * Security Updates to Third Party Libraries
  * none

### 10.11.0.15
* Release Date: 2023/07/29
* Resolved
  * none
* Security Updates to Third Party Libraries
  * [TDB-5877] Vulnerable 3rd party components spring-web update

### 10.11.0.16
* Release Date: 2023/09/11
* Resolved
  * [TDB-5862],[TDB-5863] Fix order of fetching and storing user profile in session storage
  * [TDB-5854] Remove the 'Create New Connection' link from the header menu
  * Handle addition/removal of connection link properly in header menu
* Security Updates to Third Party Libraries
  * none

### 10.11.0.17
* Release Date: 2023/09/13
* Resolved
  * Add capability for importing and exporting of datasets 
    See https://documentation.softwareag.com/terracotta/terracotta_10-15/webhelp/terracotta-db-webhelp/index.html#page/terracotta-db-webhelp%2Fco-import_export_overview.html
* Security Updates to Third Party Libraries
  * none

### 10.11.0.18
* Release Date: 2023/11/06
* Resolved
  * none
* Security Updates to Third Party Libraries
  * Spring upgrade, spring boot upgrade, undertow upgrade

### 10.11.0.19
* Release Date: 2023/11/20
* Resolved
  * [TDB-59051] Close terminated pipeline completion/closure fault window
  * Helm chart updates for security
  * Support for security in k8s operator
  * Support for wildcard certificates for servers
* Security Updates to Third Party Libraries
  * none


<br>

# Notes
------
* Terracotta BigMemory 4.x and Terracotta 10.x clients may be used simultaneously in the same application by ensuring ClassLoader isolation when initializing at least one of the clients.
<br>
