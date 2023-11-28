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

Terracotta provides distributed in-memory operational data storage and caching for highly concurrent use cases requiring low and predictable latency.

The Terracotta 10.x Enterprise Edition offering includes the following:

   *  Distributed Caching capabilities via Java's most widely used cache, Ehcache 3.x API 
   *  Distributed In-Memory Operational Data Storage capabilities via the TCStore API
   *  Distributed In-Memory Data Management with fault-tolerance, and both horizontal and vertial scaling via Terracotta Server
   *  In memory off-heap storage - take advantage of all the RAM in your server and your client applications without GC pauses
   *  Terracotta Management Console for monitoring and managing your Terracotta cluster, and the workload that you've thrown at it

------

<br>

Document Contents

* TOC
{:toc}

<br>

# Current Release
------------------
Terracotta 10.15 (October 2022) is the latest release. It includes Ehcache 3.10.

Fixes are cumulative from version to version.

<br>

# Feature Highlights
------------------
The Terracotta 10.15 release builds upon the enterprise readiness features and analytical capabilities of past releases, by improving operational usability and performance. Some of the notable features of Terracotta 10.15 include:

*  Support for Java 11
*  Support for RedHat EL9 (server)
*  Support for Windows Server 2022
*  Dataset import-export functionality  
*  Provide logs in JSON format for better searchability and performance.
*  Docker images with Logging as a service (LaaS) support
*  Voter process now available with Docker image
*  Various bug fixes and security fixes
*  Dataset import-export functionality can be exported to both Parquet and TSON file formats.  Data from a TSON-formatted file can be imported into a dataset (Parquet import not supported).  The import-export operations can be performed through a new CLI import-export tool or through an end-user built client making use of the new import-export library.
*  CVE-2022-2053 - Vulnerable 3rd Party Component Undertow updated
*  Updates to spring.boot, jackson, snakeyaml libraries

<br>

# Summary of Changes 10.15
-----------------------
### 10.15.0.1
* Release Date: 2022/11/04
* Resolved
  * [TDB-5688] TMC Versions feature not functioning correctly
  * Ensure servers reach stable states before restart/termination  
* Security Updates to Third Party Libraries
  * [TDB-5666] - CVE-2022-2053 - Vulnerable 3rd Party Component Undertow used
  * Upgrade: spring-boot:2.7.5, spring-security:5.7.5, jackson-databind 2.13.4.2

### 10.15.0.2
* Release Date: 2022/12/30
* Resolved
  * Fix MultiDiagnosticServiceProvider which was incorrectly throwing exception and implementing the needed APIs
  * Support config-tool diagnostic -output-format json
  * Support multiple `-connect-to` parameters for `config-tool import` to allow to send a cluster config file to many nodes at once (cloud)
  * Support multiple `-connect-to` parameters for `config-tool get|set|unset` to allow to pass all nodes of the cluster and find one online (cloud support)
  * Support multiple `-connect-to` parameters for `config-tool diagnostic` to allow to pass all nodes of the cluster (cloud support)
  * Support multiple `-connect-to` parameters for `config-tool activate` to allow a user to repair several modes at once by forcing a cluster topology with `-restrict`
  * Add official support for `-security-dir` in config-tool. The official  param name used by DC and server is called `security-dir`
  * Fix the voter connection logic to support public/internal addresses and source the endpoints to connect to from the topology instead of the CLI parameters.
  * Refactoring is backward compatible.
  * Don't throw on failure to connect during registration attempts
  * Reordered help usage for better reading
  * TDB-5673 DC fixes for Java 17 InetSocketAddress
  * Client-Server compatibility checking
  * Upgrade to Jackson Databind 2.13.4.2
  * Update to new Spring static web-resources location
  * Add support for new summary statistics constructors (https://bugs.openjdk.org/browse/JDK-8178117)
  * Update to Java 17 compatible version of Mockito
  * Update to Java 17 compatible version of Terracotta Platform
* Security Updates to Third Party Libraries
  * none

### 10.15.0.3
* Release Date: 2023/03/10
* Resolved
  * Support for asynchronous operations
* Security Updates to Third Party Libraries
  * [TDB-5724] Vulnerable 3rd party component Jackson-databind upgraded
  
### 10.15.0.4
* Release Date: 2023/04/21
* Resolved
  * Improved asynchronous client behaviors
  * In operator DSL and Intrinsics implementation
  * Align stream ids to better correlate across stripes
  * Docker >= v23 compatibility
  * [TDB-5529]  Gracefully return on thread interruption (like on a TimeoutException)
* Security Updates to Third Party Libraries
  * [TDB-5766] Vulnerable 3rd party component Spring-webmvc updated
  * [TDB-5761] Vulnerable 3rd party component Snakeyaml updated
  * 3rd Party Library Updates:
    *   logback-classic 1.2.12
    *   logback-core 1.2.12
    *   jackson-module-parameter-names 2.13.5
    *   undertow-core 2.2.24.Final
    *   undertow-servlet 2.2.24.Final
    *   undertow-websockets-jsr 2.2.24.Final
    *   snakeyaml 2.0
    *   Spring Boot Actuator AutoConfigure 2.7.11
    *   Spring Boot Configuration Annotation Processor 2.7.11
    *   Spring Boot Layers Tools 2.7.11
    *   Spring Boot Actuator 2.7.11
    *   Spring Boot AutoConfigure 2.7.11
    *   spring-context-support 5.3.27
    *   spring-security-config 5.7.8
    *   spring-security-core 5.7.8
    *   spring-security-crypto 5.7.8
    *   spring-security-web 5.7.8
    *   Spring Boot 2.7.11
    *   spring-aop 5.3.27
    *   spring-beans 5.3.27
    *   spring-context 5.3.27
    *   spring-core 5.3.27
    *   spring-expression 5.3.27
    *   spring-jcl 5.3.27
    *   spring-messaging 5.3.27
    *   spring-web 5.3.27
    *   spring-webmvc 5.3.27
    *   spring-websocket 5.3.27  
  
### 10.15.0.5
* Release Date: 2023/06/15
* Resolved
  * [TDB-5290] Fix failing test and audit all authentication failure
  * [TDB-4548] Added default timeout for coordinator operation
  * [TDB-4339] Implemented LivenessChecker service for CoordinationEntity
  * TMS Json refactorings
  * Wire shutdown of stores to removal of the associated shutdown handler
  * SAG Docker Documentation updates
* Security Updates to Third Party Libraries
  * [TDB-5823] Update vulnerable 3rd party component Spring-boot 
  
### 10.15.0.6
* Release Date: 2023/06/30
* Resolved
  * [TDB-5848] Refresh TCStore Overview panel when "Datasets" dropdown value is changed for the same client.
  * [TDB-5388] Fix for NPE when concurrenty updating the index value and destroying the same index
  * Improve DefinitionInterner Cleaner GC Behavior
  * Additional TMS Json refactorings
  * Internal maintenance tasks
  * Null out cluster artifacts to allow GC of shutdown cluster
  * Remove superfluous dataset creation assertions
  * Decouple Ehcache reconnect tests
  * Globally reduce test memory usage
  * Increase timeouts for select TMC tests
  * Fix task dependencies for OSGi tests
  * Use TC file deletion routines in Sovereign
  * Allow setting batch scaling message size
* Security Updates to Third Party Libraries
  * none
  
### 10.15.0.7
* Release Date: 2023/07/28
* Resolved
  * [TDB-5862] [TMC] Admin User Unable to View 'Create New Connection' Link Upon Initial Logon
  * [TDB-5863] [TMC] Create New Connection Link is visible for non-admin user after admin user logs out
* Security Updates to Third Party Libraries
  * [TDB-5872] Vulnerable 3rd party components spring-web and snappy-java
  * [TDB-5856] Vulnerable 3rd party component Snappy-java updated
  
### 10.15.0.8
* Release Date: 2023/08/25
* Resolved
  * [TDB-5854] Remove the 'Create New Connection' link from the header menu
  * Handle addition/removal of connection link properly in header menu
  * Support for security in dynamic scale
  * Removal of .netrc 
* Security Updates to Third Party Libraries
  * none
  
### 10.15.0.9
* Release Date: 2023/09/22
* Resolved
  * none
* Security Updates to Third Party Libraries
  * [TDB-5946],[TDB-5947] Update spring to 5.3.30, spring-boot to 2.7.16

### 10.15.0.10
* Release Date: 2023/11/17
* Resolved
  * [TDB-5842] Update password policy
  * [TDB-5905] Close terminated pipeline completion/closure fault window
  * Helm chart updates for security
  * Support for security in k8s operator
  * Support for wildcard certificates for servers
* Security Updates to Third Party Libraries
  * none


<br>

# Notes
-------
* Terracotta BigMemory 4.x and Terracotta 10.x clients may be used simultaneously in the same application by ensuring ClassLoader isolation when initializing at least one of the clients.
<br>
