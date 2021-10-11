---
title:  Release Notes Terracotta 3.3.0 Ehcache 2.2.0  
lang: en
layout: page
keywords:
tags:
sidebar: lb2_sidebar
permalink: /display/release/Release+Notes+Terracotta+3.3.0+Ehcache+2.2.0/
summary:
---

### Changes in Terracotta 3.3.0 and Ehcache 2.2.0

##### New Features

1\. Scale/Performance Improvements (Enterprise Feature)

Terracotta 3.3 Enterprise Edition includes a new storage strategy (an optional mode configured per cache - enabled with a new XML attribute of the <terracotta> subtag - storageStrategy="DCV2"), which when selected is designed to support caches with:

*   a large # of entries (depending on the use case - 100M+ items)
*   and/or a large # of nodes (maintaining linear scale for high write throughput rate use-cases, even with large numbers - eg >10 - of L1s)

This storage mode works with an optional client side cache, which has the added benefit of meaning that the memory required on the client is fixed - making it easy to tune.

2\. Developer Console Enhancements

*   Reorganization of tree hierarchy, and addition of shortcut buttons for Ehcache, Hibernate, Quartz and Sessions, to simplify usage for new users
*   Improved and simplified Ehcache panel
*   Addition of panel for Web Sessions
*   Addition of panel for Quartz

3\. JAAS based authentication to permit access control via LDAP etc to Developer Console and Ops Console (Enterprise Feature)

4\. Cluster Configuration Simplification

*   Automatic selection of sensible defaults (-n usage is now optional in most cases, port selection is automatic)

5\. New Toolkit APIs  
The client libraries have been refactored so that now when clustering each of the core use cases a common shared jar is required: common/terracotta-toolkit-1.0-runtime-1.0.0.jar  
This has several advantages - firstly it reduces the number of L1-L2 socket connections from applications that use multiple client types (Ehcache, Sessions etc) and in such cases also reduces permgen heap usage.  
Additionally the common library contains a series of useful constructs that can be used within user applications. These include concurrent maps, locks, counters, queues, an evictor etc. For an introduction, see [http://dsoguy.blogspot.com/2010/06/couple-minutes-with-some-toolkit.html](http://dsoguy.blogspot.com/2010/06/couple-minutes-with-some-toolkit.html) .

If You Are Upgrading: Terracotta Integration Modules in the Terracotta Toolkit

Users upgrading from a version earlier than 3.3.0 should note that the following Terracotta Integration Modules (TIMs) are now part of the Terracotta Toolkit JAR:

*   tim-concurrent-collections
*   tim-distributed-cache
*   tim-annotations
*   tim-async-processing

Product installation does not require specifying these TIMs. See the [product documentation](http://terracotta.org/documentation) for more information on installing Terracotta products with the Terracotta Toolkit JAR.

6\. Web Sessions support on Websphere 6.1 and 7.0

7\. Operator console feature to facilitate easier dynamic changes of cluster server topology - by forcing a live Terracotta server config reload (Enterprise Feature)

8\. Operational event monitoring - for cluster management, control and behavior analysis. Delivered via an Events Console (available in both operator console and developer console as well as via a JMX API) (Enterprise Feature)

9\. Healthchecker heartbeat and reconnect setting templates included in kit for development, production and aggressive configuration settings. (Enterprise Feature)

See the [product documentation](http://terracotta.org/documentation) for a full description of the new features.

##### Expected Updates and Scheduled Bug Fixes

in the 2.2.0 [EHC Jira Project](https://jira.terracotta.org/jira/browse/EHC#selectedTab=com.atlassian.jira.plugin.system.project%3Achangelog-panel)  
in the 3.3.0 [CDV Jira Project](https://jira.terracotta.org/jira/browse/CDV#selectedTab=com.atlassian.jira.plugin.system.project%3Achangelog-panel)  
in [Terracotta Forge Projects](http://jira.terracotta.org/jira/secure/IssueNavigator.jspa?reset=true&pid=10230&fixfor=10792)

##### Kit & Configuration Changes

*   Directory and file naming has been made consistent throughout the kit. Kit directories contents have been reorganized for simplicity. DSO and platform capabilities are now located under a platform directory. Please review the kit structure if you have a previous Terracotta installation, as any custom scripts you have created may no longer work without adjustments.

##### Additional Improvements

The 3.3.0 Kit also includes Quartz 1.8.4

* * *

##### Known Open Issues

*   [CDV-1524](https://jira.terracotta.org/jira/browse/CDV-1524) Tim-get issues getting correct version of tim-ehcache 1.6.0, now that a newer version has been released
    *   Workaround: tell tim-get to explicitly get 1.6.0

*   [CDV-4519](https://jira.terracotta.org/jira/browse/DEV-4519) Clustering more than one web application in the same JVM can cause errors

*   [CDV-1480](https://jira.terracotta.org/jira/browse/CDV-1480) If non portable type which is not in the api is added, the map from the toolkit throws a TCNonPortableObjectException

*   [QTZ-49](https://jira.terracotta.org/jira/browse/QTZ-49)QuartzScheduler doesn't register correctly jmx bean on websphere app server 6.1 and 7.0 Jmx Server

*   [EHC-748](https://jira.terracotta.org/jira/browse/EHC-748) Documentation does not mention time/schedule interval for the thread run

*   [EHC-745](https://jira.terracotta.org/jira/browse/EHC-745) Synchronization.afterCompletion() call failed - NPE with Hibernate and Bitronix  
    Please email any questions you have regarding the beta to pm <at> terracotta.org

*   [EHC-743](https://jira.terracotta.org/jira/browse/EHC-743) TerracottaConfigConfiguration renamed to GlobalTerracottaConfiguration

*   [EHC-666](https://jira.terracotta.org/jira/browse/EHC-666) Element.updateUpdateStatistics() resets Element.version

*   [EHC-755](https://jira.terracotta.org/jira/browse/EHC-755) BTM and Atomikos don't support suspend() and resume(). T

Document generated by Confluence on Oct 05, 2021 15:59

[Atlassian](http://www.atlassian.com/)
