---
title:  Release Notes Terracotta 3.6, Ehcache 2.5, Quartz 2.1  
lang: en
layout: page
keywords:
tags:
sidebar: lb2_sidebar
permalink: /display/release/Release+Notes+Terracotta+3.6%2C+Ehcache+2.5%2C+Quartz+2.1.html
summary:
---

The Terracotta 3.6.6 kit includes Terracotta 3.6.6, Ehcache 2.5.7 and Quartz 2.1.6.


* TOC
{:toc}

The following may be applicable to using certain Ehcache cache modes with Hibernate:

<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd" colspan="5" style="text-align: center;"><strong>HIBERNATE MODES</strong></td></tr><tr><th colspan="1" class="confluenceTh"><p>&nbsp;</p><p>EHCACHE MODES</p></th><th class="confluenceTh">Read-Only</th><th class="confluenceTh">Non-Strict Read-Write</th><th class="confluenceTh">Read-Write</th><th class="confluenceTh">Transactional</th></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Nonstop caches</strong></td><td class="confluenceTd">Good</td><td class="confluenceTd">Good (but can degrade)</td><td class="confluenceTd">Not Recommended</td><td class="confluenceTd">Not Recommended</td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Eventual consistency</strong></td><td class="confluenceTd">Good</td><td class="confluenceTd">Good (but can degrade)</td><td class="confluenceTd">Not Recommended</td><td class="confluenceTd">Not Recommended</td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Strong consistency</strong></td><td class="confluenceTd">Good</td><td class="confluenceTd">Good</td><td class="confluenceTd">Good</td><td class="confluenceTd">Not recommended</td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Transactional</strong></td><td class="confluenceTd">Not Recommended</td><td class="confluenceTd">Not Recommended</td><td class="confluenceTd">Not Recommended</td><td class="confluenceTd">Good</td></tr></tbody></table>

Release Notes for Terracotta 3.6.6
==================================

Terracotta 3.6.6 is a bug fix release. The kit includes Ehcache Core 2.5.7 and Quartz Scheduler [2.1.6](https://jira.terracotta.org/jira/browse/QTZ/fixforversion/11104)

##### Resolved Issue

*   8589 - NPE thrown in Search API if using Strong consistency

Release Notes for Terracotta 3.6.5
==================================

Terracotta 3.6.5 is a bug fix release. The kit includes Ehcache Core 2.5.6 and Quartz Scheduler [2.1.6](https://jira.terracotta.org/jira/browse/QTZ/fixforversion/11104)

##### Resolved Issues

*   8109 - Delay handling inline DGC results to prevent potential server exit when non-existent object requested
*   8108 - Element Pinning for clustered cache not pinned as expected
*   8106 - Stale value in local cache when reverse mapping which is not pinned gets evicted form local cache
*   8073 - Invalidate client entries for Strongly consistent caches
*   6913 - Resolve issues in Developer Console where connected clients were not visible
*   3321 - Improved error messages when issues with l2-group-port, running two servers on one system.

Release Notes for Terracotta 3.6.4
==================================

Terracotta 3.6.4 is a bug-fix release. The kit includes Ehcache Core [2.5.5](Release+Notes+Ehcache+Core+2.5) and Quartz Scheduler [2.1.6](https://jira.terracotta.org/jira/browse/QTZ/fixforversion/11104)

##### Resolved Issues

*   7980 - Resolved performance related search issue - causing slowdowns on upgrade
*   8090 - Resolve issue with lock acquisition order
*   8099 - Resolve lock ordering issue with TTI

Release Notes for Terracotta 3.6.3
==================================

Terracotta 3.6.3 is a bug-fix release. The kit includes Ehcache Core [2.5.4](Release+Notes+Ehcache+Core+2.5) and Quartz Scheduler [2.1.6](https://jira.terracotta.org/jira/browse/QTZ/fixforversion/11104)

The updates for 3.6.3 include improved Rejoin/Reconnect functionality.

##### Resolved Issues

*   EHCTERR-23 Terracotta L2 quits unexpectedly
*   DEV-7374 Monotonic Reads is broken in Clustered Cache when multiple puts and removes are done for same Key.
*   DEV-7195 Quartz not following quartz locality feature, when used with requestRecovery=true
*   DEV-5880 Deadlock when used explicit locking to update multiple caches
*   DEV-7842 Update of "SerialzedEntry.lastAccessedTime" depends on whether cache statistics is enabled or disabled
*   DEV-7698 MBean tunneling error
*   DEV-7330 IllegalStateException while put() operation of 5M sized element in clustered cache
*   DEV-7281 com.tc.object.tx.UnlockedSharedObjectException restarting a Quartz Scheduler
*   DEV-7076 Possible thread leak when shutting down Ehcache clients on Tomcat 7
*   DEV-6737 Difference in the fault rate between aggregate stats and the sum of all L1s on dev-console

Release Notes for Terracotta 3.6.2
==================================

Terracotta 3.6.2 is a bug-fix release. The kit includes Ehcache Core [2.5.2](Release+Notes+Ehcache+Core+2.5) and Quartz Scheduler [2.1.4](https://jira.terracotta.org/jira/browse/QTZ/fixforversion/11088)

The fixes in Terracotta 3.6.2 improve the pinning functionality with clustered caches, along with adding more robust logging and checks.

##### Resolved Issues

*   DEV-5345 - Added logging option indicating where and when a NonStopCacheException occurs
*   DEV-6051 - Add check when shutting down Active if Mirror is not available
*   DEV-6154 - Default Search commit thread value default is now based on persistence setting
*   DEV-6345 - Logic test added to validate consistency of healthcheck parameters
*   DEV-6435 - updated JDK 6 support update 30
*   DEV-6564 - Updating pinning for clustered caches
*   DEV-6575 - Resolve offheap leak with Rejoin
*   DEV-7006 - Resolve CacheException after client rejoin
*   DEV-7083 - Resolve stray lock holds with explicit locking and nonstop

Release Notes for Terracotta 3.6.1
==================================

Terracotta 3.6.1 is a bug-fix release. The kit includes Ehcache Core [2.5.1](Release+Notes+Ehcache+Core+2.5) and Quartz Scheduler [2.1.3](https://jira.terracotta.org/jira/secure/ReleaseNote.jspa?projectId=10282&version=11081)

The bug fixes addressed in Terracotta 3.6.1 enhances the Ehcache functionality for Hibernate and the overall stability of the new features in Terracotta

##### Resolved Issues

*   [CDV-1608](https://jira.terracotta.org/jira/browse/CDV-1608) - Thread context classloader not preserved for <nonstop> operations
*   DEV-6448 - Active Passive sync issues with large data
*   DEV-6538 - cache.get() on Pinning cache elements returns null
*   DEV-6579 - Fix lastUpdateTime for all caches
*   DEV-6640 - ObjectStreamClassSerializer instances hold strong references to serialized types
*   DEV-6695 - Race condition with search results may cause crash
*   DEV-6698 - LocalityHandler throws NPE during scheduler.shutdown after scheduler.clear
*   DEV-6703 - exception caused by Old Entry present for :DNAImpl
*   DEV-6720 - Remove excessive logging following successful rejoin

Release Notes for Terracotta 3.6.0, Ehcache 2.5.0, Quartz 2.1.1
===============================================================

Overview
--------

*   Enterprise Ehcache 2.5.0
*   Quartz Scheduler 2.1.1
*   Terracotta Enterprise Suite 3.6.0

Summary of Changes
------------------

#### Ehcache 2.5.0

The major new capability of Ehcache 2.5 is enhanced cache resource management, specifically the ability to set the maximum size in bytes of a Cache or CacheManager. This offers the following additional benefits to Ehcache users:

*   Ease of use. Tuning cache sizes is now as simple as setting the maximum number of bytes. No more setting maximum entry counts and juggling eviction parameters to approximate the maximum amount of system memory your cache can use.
*   Greater efficiency. Ehcache now efficiently manages caches based on their memory footprint and can dynamically balance their resource use based on runtime size information.

For detailed documentation on how to use the new configuration settings available in Ehcache 2.5 please refer to:  
[http://www.ehcache.org/documentation/user-guide/configuration](http://www.ehcache.org/documentation/user-guide/configuration)

Also the Ehcache API has been extended with new batch methods (getAll, putAll and removeAll) that are performance optimized for use with Terracotta clustered caches.

Versions of JRockit earlier than 1.6.0\_26 will have calculation errors in SizeOf computations and may even fail out-right. Also ReflectionSizeOf is very inaccurate for all versions (even R28+) of JRockit and is therefore highly recommended to use AgentSizeOf.

[List of Jiras](https://jira.terracotta.org/jira/browse/EHC#selectedTab=com.atlassian.jira.plugin.system.project%3Achangelog-panel)

#### Quartz Scheduler 2.1.1

This is a bug fix release for Quartz Scheduler. The list of fixes can be found [here](https://jira.terracotta.org/jira/secure/ReleaseNote.jspa?projectId=10282&version=10981)

#### Terracotta 3.6.0

*   BigMemory enhancements - L1 BigMemory support in clustered configurations, for significant performance improvements in large data set read-mostly use cases
*   Eventual consistency is now the default mode
*   Tomcat 7 support for express WebSessions
*   CentOS 5.4 support
*   Many dev-console enhancements
    *   Ehcache statistics display can now show all available stats
    *   Both the Ehcache statistics data displayed in tabular form and charts shown are now user customizable
    *   A new tab that shows cache sizing

#### Known Issues and Limitations

*   Terracotta 3.6.0 is only compatible with Ehcache 2.5.0
*   5225 - Search does not support isNull
    *   Workaround: use a custom extractor that returns boolean if the field is "null"
*   5939 - Date range queries are slower than other queries
*   6361 - Multiple rejoins may cause PermGen OOME
*   6395 - multiple cachemanagers with same name in same jvm cause error
*   6409 - When using L1 BigMemory Terracotta Server Array should run in EVENTUAL mode (which is the default)
*   6501 - QuartzWhere doesn't honor isConcurrentExecutionDisallowed
*   6510 - Can get a NullPointerException when using CacheWrtiers on two default caches
*   [EHC-739](https://jira.terracotta.org/jira/browse/EHC-739) - OSGI headers in the MANIFEST
*   [EHC-882](https://jira.terracotta.org/jira/browse/EHC-882) - Make @IgnoreSizeOf inheritable by users
*   DOC-1008 - Rejoin prone to oome when executing on clients with jdk 1.5
*   [CDV-1591](https://jira.terracotta.org/jira/browse/CDV-1591) - issue with Tomcat valve org.apache.catalina.valves.CometConnectionManagerValve. This valve stores Http Servlet requests in session object, which if clustered with Terracotta, requests would have to be serialized.

Please email any questions you have regarding the beta to pm <at> terracotta.org


