---
title:  Terracotta 10.7 Release Notes  
lang: en
layout: page
keywords:
space: current
sidebar: lb2_sidebar
permalink: /display/release/Terracotta+10.7+Release+Notes.html
summary:
---

Terracotta is a distributed in-memory data management solution for both operational storage and analytical processing.  Terracotta has powerful query and computation capabilities, leveraging native JDK features such as Java Streams, collections, and functions. It supports the following sub-systems:

*   A storage sub-system fronted by TCStore API
*   A caching sub-system fronted by the next generation Ehcache API which includes and extends JSR 107
    
Both sub-systems are backed by the distributed Terracotta Server, which provides a common platform for distributed in-memory data storage with scale-out, scale-up and high availability features.


* TOC
{:toc}

<br>


# Feature Highlights
------------------

The Terracotta 10.7 release builds upon the enterprise readiness features and analytical capabilities of past releases, by improving operational usability and performance. Some of the notable features of Terracotta 10.7 include:

* Significant replacement of the configuration system of Terracotta Servers
* Improved ability to scale-out (horizontally) servers without downtime
* Formal support for complex data types in TCStore
* Dynamic Cluster Configuration
  *   Terracotta Servers are no longer configured via XML configuration files (difficult to keep consistent across servers in the cluster, requiring reloading for changes to take affect)
  *   Terracotta Servers are now configured with "config-tool" which opens the door to more dynamic to changes of configuration across the cluster.
*   Improved ability to scale-out (horizontally) servers without downtime  
    *   Use config-tool to add or remove stripes from clusters
*   Formal support for complex data types in TCStore  
    *   New Cell types:  Map and List (which can each contain Maps and Lists)
* Azul Java 11 Support
* DSL support for constant functional expressions in TCStore
<br><br> 


# Summary of Changes 10.7.0
-----------------------

## 10.7.0.1
- ### Release Date: 2021/04
- ### Resolved
  *   [TDB-4674] - close() is blocked when servers are gone if entity.close() is called.
  *   [TDB-4767] - Performance overhead when adding new cell definition in each record of a Dataset.
  *   [TDB-4720] - Cell data omitted when too many CellDefinitions used in Dataset.
  *   [TDB-4783] - Three node stripe data loss scenario possible during passive connection.
  
- ### Security Updates to Third Party Libraries
  *   [TDB-5317] - jackson-databind updated to 2.10.5.1 (CVE-2020-25649)
  *   [TDB-5234] - snakeyaml updated to 1.26 (CVE-2003-1564)
  *   Various other 3rd party library updates
  
## 10.7.0.2
- ### Release Date: 2021/04/23
- ### Resolved
  *   [TDB-5253] - Update TMS/TMC to support dynamic scale
  *   [TDB-5320] - Introduce validation constraints on names
  *   [TDB-5284] - Dynamic Scaling: Multistripe Scaling transaction persistence and recovery
  *   [TDB-5229] - Using the TMC to detach the passive node from a 2-node stripe does not remove the entry from the display
  *   [TDB-5304] - Indexes being dropped upon scaling
  
- ### Security Updates to Third Party Libraries
  *   None
  
## 10.7.0.3
- ### Release Date: 2021/05/21
- ### Resolved
  *   [TDB-5253] - Update TMS/TMC to support addition of stripes
  *   [TDB-5320] - Introduce validation constraints on stripe and node names
  *   [TDB-5284] - Dynamic Scaling: live addition/removal of stripes after activation of cluster
  *   [TDB-5229] - Using the TMC to detach the passive node from a 2-node stripe does not remove the entry from the display
  *   [TDB-5304] - Indexes being dropped upon scaling
  *   Fix health check config, Fix retirement off by one bug that can lead to a memory leak
  
- ### Security Updates to Third Party Libraries
  *   None
 
## 10.7.0.4

- ### Release Date: 2021/08/13

- ### Resolved

  *   [TDB-5416] – Avoid crash on security audit log roll-over
  *   PR74 – Parsing error on cache operation timeout settings

- ### Security Updates to Third Party Libraries
*   None
   
## 10.7.0.5

- ### Release Date: 2022/01/05

- ### Resolved

  *   [TDB-5470] - TMC resource usage bugs
  *   [TDB-5505] - Fix Comms error in server
  *   [TDB-5506 - Fix for problem in eviction statistic

- ### Security Updates to Third Party Libraries

## 10.7.0.7

- ### Release Date: 2022/04/01

- ### Resolved

  *   [TDB-5214] - Setting public hostname/port via config-tool is not displayed in TMC until restart
  *   [TDB-5258] - Extremely long and verbose errors returned by the config tool may be confusing for a TMC user.
  *   [TDB-5541] - Security messages are not correctly reported back to clients


- ### Security Updates to Third Party Libraries

  *   [TDB-5594] - Vulnerable 3rd Party Component spring used

## 10.7.0.8

- ### Release Date: 2022/10/14

- ### Resolved

- ### Security Updates to Third Party Libraries

  *   [TDB-5666] - CVE-2022-2053 - Vulnerable 3rd Party Component Undertow used

  *   Update spring.boot, jackson, snakeyaml

## 10.7.0.9

- ### Release Date: 2022/11/04

- ### Resolved

- ### Security Updates to Third Party Libraries

  *   Upgrade: spring-boot:2.7.5, spring-security:5.7.5
  *   Ensure servers reach stable states before restart/termination

## 10.7.0.10

- ### Release Date: 2022/12/30

- ### Resolved

  *   Fix MultiDiagnosticServiceProvider which was incorrectly throwing exception and implementing the needed APIs
  *   Support config-tool diagnostic -output-format json
  *   Support multiple `-connect-to` parameters for `config-tool import` to allow to send a cluster config file to many nodes at once (cloud)
  *   Support multiple `-connect-to` parameters for `config-tool get|set|unset` to allow to pass all nodes of the cluster and find one online (cloud support)
  *   Support multiple `-connect-to` parameters for `config-tool diagnostic` to allow to pass all nodes of the cluster (cloud support)
  *   Support multiple `-connect-to` parameters for `config-tool activate` to allow a user to repair several modes at once by forcing a cluster topology with `-restrict`
  *   Add official support for `-security-dir` in config-tool. The official  param name used by DC and server is called `security-dir`
  *   Fix the voter connection logic to support public/internal addresses and source the endpoints to connect to from the topology instead of the CLI parameters. Refactoring is backward compatible.
  *   Fixed Cluster#determineEndpoint(UID, Collection)
  *   Further HostPort refactorings to decouple the parsing from the utility classes with the introduction of HostPort#parse methods
  *   Core already has some default connection and operation timeouts for diagnostic port, so use them if we set null
  *   Don't throw on failure to connect during registeration attempts
  *   Reordered help usage for better reading
  *   [TDB-5673] DC fixes for Java 17 InetSocketAddress
  *   Client-Server compatibility checking
  *   AttachSecuredNode1x3IT, SetCommand1x2IT, SetCommand2x2IT: let server states settle before restarting cluster
  *   DataLoss1x3IT: wait for a passive before killing the active


- ### Security Updates to Third Party Libraries

  *   Upgrade to Jackson Databind 2.13.4.2
*   Update to new Spring static web-resources location

## 10.7.0.11

- ### Release Date: 2023/02/16

- ### Resolved



- ### Security Updates to Third Party Libraries

  *   [TDB-5724] Vulnerable 3rd party component Jackson-databind updated

## 10.7.0.12

- ### Release Date: 2023/05/02

- ### Resolved

  *   [TDB-5529]  Gracefully return on thread interruption (like on a TimeoutException)
  *   Improved asynchronous client behaviors
  *   In operator DSL and Intrinsics implementation
  *   Align stream ids to better correlate across stripes
  *   Docker >= v23 compatibility


- ### Security Updates to Third Party Libraries

  * [TDB-5767] Vulnerable 3rd party component Spring-webmvc updated to 5.3.27

  * [TDB-5762] Vulnerable 3rd party component Snakeyaml updated to 2.0

  * Other library updates:
  
    logback-classic 1.2.12
    logback-core 1.2.12
    jackson-module-parameter-names 2.13.5
    undertow-core 2.2.24.Final
    undertow-servlet 2.2.24.Final
    undertow-websockets-jsr 2.2.24.Final
    snakeyaml 2.0
    Spring Boot Actuator AutoConfigure 2.7.11
    Spring Boot Configuration Annotation Processor 2.7.11
    Spring Boot Layers Tools 2.7.11
    Spring Boot Actuator 2.7.11
    Spring Boot AutoConfigure 2.7.11
    spring-context-support 5.3.27
    spring-security-config 5.7.8
    spring-security-core 5.7.8
    spring-security-crypto 5.7.8
    spring-security-web 5.7.8
    Spring Boot 2.7.11
    spring-aop 5.3.27
    spring-beans 5.3.27
    spring-context 5.3.27
    spring-core 5.3.27
    spring-expression 5.3.27
    spring-jcl 5.3.27
    spring-messaging 5.3.27
    spring-web 5.3.27
    spring-webmvc 5.3.27
    spring-websocket 5.3.27

## 10.7.0.13

- ### Release Date: 2023/06/15

- ### Resolved



- ### Security Updates to Third Party Libraries

  *   [TDB-5824] Update vulnerable 3rd party component Spring-boot to 2.7.12

## 10.7.0.14

- ### Release Date: 2023/06/28

- ### Resolved

  *   Improve DefinitionInterner Cleaner GC Behavior
  *   Download Docker PDFs from iData directly
*   TMS Json refactorings


- ### Security Updates to Third Party Libraries


## 10.7.0.15

- ### Release Date: 2023/07/28

- ### Resolved



- ### Security Updates to Third Party Libraries

  *   [TDB-5877] Vulnerable 3rd party components spring-web update

## 10.7.0.16

- ### Release Date: 2023/09/07

- ### Resolved

  *   Add capability for importing and exporting of datasets 
      See https://documentation.softwareag.com/terracotta/terracotta_10-15/webhelp/terracotta-db-webhelp/index.html#page/terracotta-db-webhelp%2Fco-import_export_overview.html


- ### Security Updates to Third Party Libraries


## 10.7.0.17

- ### Release Date: 2023/09/21

- ### Resolved



- ### Security Updates to Third Party Libraries

  *   [TDB-5946],[TDB-5947] Update spring to 5.3.30, spring-boot to 2.7.16

## 10.7.0.18

- ### Release Date: 2023/10/20

- ### Resolved



- ### Security Updates to Third Party Libraries

  *   Spring upgrade, spring boot upgrade, undertow upgrade

## 10.7.0.19

- ### Release Date: 2023/11/16

- ### Resolved

  - TDB-5905 Close terminated pipeline completion/closure fault window
  - Helm chart updates for security
  - Support for security in k8s operator
  - Support for wildcard certificates for servers



- ### Security Updates to Third Party Libraries





# Notes:
------

* Terracotta BigMemory 4.x and Terracotta 10.x clients may be used simultaneously in the same application by ensuring ClassLoader isolation when initializing at least one of the clients.
