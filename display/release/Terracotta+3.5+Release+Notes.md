---
title:  Terracotta 3.5 Release Notes  
lang: en
layout: page
keywords:
tags:
sidebar: lb2_sidebar
permalink: /display/release/Terracotta+3.5+Release+Notes.html
summary:
---

The Terracotta 3.5.5 kit includes Terracotta 3.5.5, Ehcache 2.4.8 and Quartz 2.1.6. Please see Ehcache 2.4.8 [Release Notes](Release+Notes+Ehcache+Core+2.4) for further information on changes


* TOC
{:toc}

The following may be applicable to using certain Ehcache cache modes with Hibernate:

<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd" colspan="5" style="text-align: center;"><strong>HIBERNATE MODES</strong></td></tr><tr><th colspan="1" class="confluenceTh"><p>&nbsp;</p><p>EHCACHE MODES</p></th><th class="confluenceTh">Read-Only</th><th class="confluenceTh">Non-Strict Read-Write</th><th class="confluenceTh">Read-Write</th><th class="confluenceTh">Transactional</th></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Nonstop caches</strong></td><td class="confluenceTd">Good</td><td class="confluenceTd">Good (but can degrade)</td><td class="confluenceTd">Not Recommended</td><td class="confluenceTd">Not Recommended</td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Eventual consistency</strong></td><td class="confluenceTd">Good</td><td class="confluenceTd">Good (but can degrade)</td><td class="confluenceTd">Not Recommended</td><td class="confluenceTd">Not Recommended</td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Strong consistency</strong></td><td class="confluenceTd">Good</td><td class="confluenceTd">Good</td><td class="confluenceTd">Good</td><td class="confluenceTd">Not recommended</td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Transactional</strong></td><td class="confluenceTd">Not Recommended</td><td class="confluenceTd">Not Recommended</td><td class="confluenceTd">Not Recommended</td><td class="confluenceTd">Good</td></tr></tbody></table>

Release Notes for Terracotta 3.5.5
==================================

Terracotta 3.5.5 is a bug fix release. The kit includes Ehcache [2.4.8](Release+Notes+Ehcache+Core+2.4) and Quartz [2.1.6](https://jira.terracotta.org/jira/browse/QTZ/fixforversion/11104)

##### Resolved Issues

*   3321 - Improved error messaging for errors in TSA configuration file
*   6154 - Allow override of commits thread by existing tc.properties file
*   6448 - Resolve HA sync issues with large data sets
*   7620 - Writing large entries into a Distributed Cache can cause the non-stop timeout limit to be exceeded
    
    Release Notes for Terracotta 3.5.4
    ==================================
    
    Terracotta 3.5.4 is a bug fix release. The kit includes Ehcache [2.4.7](Release+Notes+Ehcache+Core+2.4) and Quartz [2.1.2](https://jira.terracotta.org/jira/browse/QTZ/fixforversion/11065)
    

##### Resolved Issues

*   [CDV-1608](https://jira.terracotta.org/jira/browse/CDV-1608) - Thread context classloader not preserved for <nonstop> operations
*   5358 - TDC throws NPE when ehcache client disconnects
*   6155 - Quartz Locality Property dynamic location
*   6308 - com.tc.exception.TCObjectNotFoundException with Quartz.
*   6333 - Cannot create caches with Local Transactions Programmatically
*   6361 - Seeing PermGen OOM errors following Rejoins
*   6375 - L1Loader leak after re-join via com.sun.jmx.remote.opt.internal.ArrayNotificationBuffer$BufferListener
*   6377 - Terracotta Server crashes with the following exception - ERROR com.tc.net.core.CoreNIOServices - Unhandled exception from selectLoop
*   6378 - Keyset returned by cache.getKeys() is not nonstop
*   6403 - Dev Console outputs "Done Monitoring" on the console when the L1 completes
*   6413 - Transactional caches suffer from race conditions when BigMemory is enabled
*   6437 - Transactional cache with BigMemory throws DeadLockException in case of timeout
*   6450 - Typo in TSA startup error message when server names not properly filled out
*   6456 - LocalTrigger's locality does not override that of the LocalJob
*   6459 - java.lang.AssertionError: local set not modified when trying to schedule new job/trigger or clear scheduler
*   6464 - Quartz Where: ClusteredFilledTest failures due to nodes not getting expected localized jobs
*   6484 - TCObjectNotFoundException with Quartz
*   6510 - NullPointerException when using CacheWriters on two default caches
*   6525 - Quartz Where does fire ERROR state triggers
*   6551 - Orphaned trigger failing to execute in Quartz-where
*   6552 - Issue with Quartz where's execution of jobs on the designated Node Groups
*   6558 - home page of ehcache javadocs has error
*   6563 - nodes not properly parsed from quartzLocality.properties when there is whitespace
*   6577 - NPE in Terracotta 3.5.1 to 3.5.3 upgrade
*   6592 - Terracotta Servers crash (Active and Passive) when com.tc.net.core.CoreNIOServices Error happens
*   6595 - TCNonPortableObjectError for putWithWriter() on serialisable Element
*   6621 - Thread context classloader not preserved for <nonstop> operations

Release Notes for Terracotta 3.5.3
==================================

Terracotta 3.5.3 is a bug fix release. The kit includes Ehcache [2.4.6](Release+Notes+Ehcache+Core+2.4) and Quartz [2.1.0](https://jira.terracotta.org/jira/secure/ReleaseNote.jspa?projectId=10282&version=10981)

Terracotta 3.5.3 requires Ehcache 2.4.6. There is no backward compatibility with earlier Ehcache versions

### Summary of Key Changes

*   The 3.5.3 release provides a kit option which excludes Oracle Berkeley DB. For more information, see [#Database Setup](#Terracotta3.5ReleaseNotes-DatabaseSetup).

##### Resolved Issues

*   5978 - Fix DNAException
*   6156 - com.tc.config.getFromSource.timeout property is not honored
*   6157 - Cache.replace(oldElement, newElement) with local cache and big memory throws ClassCastException
*   6174 - Resolve DMI exception
*   6175 - Resolve TCNotRunningException
*   6177 - Resolve Cache.isReadLockedByCurrentThread(key) throws UnsupportedOperationException
*   6191 - Terracotta clustered event listeners will now work as per configured nonstop timeout and behavior - if times out on trying to cluster notify event, will throw exception when exception-on-timeout behavior is configured; and will log info level msg for localReads and noop.
*   6195 - Clustered attribute ignored. It now makes sure it is being TC clustered. If not, simply does nothing.
*   6196 - Cache.evictExpiredElements() does not remove the expired elements from the local BIGMemory
*   6202 - The system appears to hang when shuttingdown. Many rejoin threads are spawned.
*   6244 - multiple writers concurrently updating an element for the same key in cache, may not updated values
*   6251 - bug with String cache keys with negative hashCode() values in lock generator
*   6374 - Support dynamic changes to maxElementsOnDisk for clustered caches

Database Setup
--------------

For Enterprise customers, this software is provided in two kit forms. The kit you get depends on your specific commercial distribution terms. Kits packaged with the "-gt" name suffix do not include Oracle Berkeley DB, and are configured to use Derby DB by default.

**Note:** In this release, Berkeley DB is the recommended DB option for users wishing to set the persistence mode to "permanent-store".

For kits _without_ the "-gt" suffix, you can switch to Derby DB by following the instructions [here](http://terracotta.org/documentation/terracotta-server-array/server-arrays#definitions-and-functional-characteristics).

For kits with the "-gt" suffix where Berkeley DB is required, follow these steps:

1\. Download [Berkeley DB 4.1.10](http://www.oracle.com/technetwork/database/berkeleydb/downloads/index) or directly here: [http://download.oracle.com/maven/com/sleepycat/je/4.1.10/je-4.1.10.jar](http://download.oracle.com/maven/com/sleepycat/je/4.1.10/je-4.1.10.jar)

2\. Extract Berkeley DB into <Terracotta-installation-directory>/lib.

3\. Comment out the following lines in the server start-up script you use:

**start-tc-server.sh (Microsoft Windows)**

set DERBY\_DB="-Dcom.tc.l2.db.factory.name=com.tc.objectserver.storage.derby.DerbyDBFactory"
set OPTS=%OPTS% %DERBY\_DB%
echo Starting Terracotta server with Derby DB

**start-tc-server.bat (UNIX/Linux)**

DERBY\_DB="-Dcom.tc.l2.db.factory.name=com.tc.objectserver.storage.derby.DerbyDBFactory"
JAVA\_OPTS="${JAVA\_OPTS} ${DERBY\_DB}"
echo "Starting Terracotta server with Derby DB"

When you start the Terracotta servers, they will use Berkeley DB.

Release Notes for Terracotta 3.5.2
==================================

Terracotta 3.5.2 is a bug-fix release. The kit includes Ehcache [2.4.3](Release+Notes+Ehcache+Core+2.4) and Quartz 2.0.2.

### Summary of Key Changes

*   Search Improvements
    *   Access to attribute name added to Extractor classes ([EHC-846](https://jira.terracotta.org/jira/browse/EHC-846))
    *   Bugs which can cause failures when using search resolved (5573, 5888)
*   Improvements to Terracotta Developer Console when connected to clusters with large numbers of clients and high load (5472)

##### Resolved Issues Terracotta 3.5.2

*   [CDV-1563](https://jira.terracotta.org/jira/browse/CDV-1563) - Resolved server dies with java.lang.AssertionError: ManagedObjectImpl
*   [CDV-1571](https://jira.terracotta.org/jira/browse/CDV-1571) - resolved race condition opening temp journal during passive synch
*   5301 - Add derby as one of the db options for Terracotta server (L2)
*   5372 - clean up nonstop threads when app threads terminate
*   5472 - Dev console is slow when connecting to test cluster with high load
*   5573 - If an active server crashes in the middle of creating a new lucene index it may fail to reload when active restarts
*   5695 - Updated the default concurrency for DCV2 from 2K to 256
*   5751 - fixed race during Cache.initialise() where the attribute extractors are being set with the executor
*   5806 - resolve OffHeap map/cache iterators are invalid after a concurrent resize operation
*   5816 - resolve SQLTransactionRollbackException during passive server restart
*   5888 - resolve OOME in Server Array using search when eviction runs at the same time / index reader was needlessly re-opened for each removed element when processing eviction removes
*   5889 - Allow DGC requests to go through even in paused stage

##### Resolved Issues Quartz 2.0.2

*   [QTZ-113](https://jira.terracotta.org/jira/browse/QTZ-113) - Quartz starts unmanaged threads and J2EE context is not propagated to the job threads
*   [QTZ-137](https://jira.terracotta.org/jira/browse/QTZ-137) - XMLSchedulingDataProcessorPlugin initialization fails if job initializer file initially does not exist and file scanning has been enabled
*   [QTZ-162](https://jira.terracotta.org/jira/browse/QTZ-162) - Batching breaks SchedulerFactories other than StdSchedulerFactory
*   [QTZ-167](https://jira.terracotta.org/jira/browse/QTZ-167) - JVM arg to skip update check now matches with arg in quartz.property
*   [QTZ-168](https://jira.terracotta.org/jira/browse/QTZ-168) - PropertySettingJobFactory should inject values from the SchedulerContext onto the job instance
*   [QTZ-172](https://jira.terracotta.org/jira/browse/QTZ-172) - Problem validating new misfire instructions
*   [QTZ-174](https://jira.terracotta.org/jira/browse/QTZ-174) - Race condition during shutdown of Quartz
*   5595 - Quartz Where Custom constraints use wrong prop file

* * *

Release Notes for Terracotta 3.5.1
==================================

Terracotta 3.5.1 is a bug-fix release. The kit includes [Ehcache 2.4.2](Release+Notes+Ehcache+Core+2.4) and Quartz 2.0.0.

##### Resolved Issues

*   [CDV-1566](https://jira.terracotta.org/jira/browse/CDV-1566) - Ehcache class fails to load in Liferay when clustered.
*   5583 - Resolves an incompatibility between distributed Ehcache and Hibernate.
*   5590 - When Server is running with OffHeap configured and on temp-swap mode, server can leak cache entries in the OffHeap leading to ever growing space utilization and finally running out of space and crashing itself. This leak happens only when running on temp-swap mode and is because of server defering entry remove operations in offheap for better performance.
*   5091 - Changing maxElementsOnDisk in the Dev Console does not does not change the L2's value.
*   5576 - Changing maxElementsInMemory with the Dev Console or programmatically does not change the L1's values.
*   5547 - Rejoin issue causing struck threads resolved

##### Known Issues and Limitations

*   [CDV-1569](https://jira.terracotta.org/jira/browse/CDV-1569) TCNonPortableObjectError using tim-ehcache-2.x-ee and non-EE TIMs.
*   5225 - Search does not support isNull
    *   Workaround: use a custom extractor that returns boolean if the field is "null"
*   5595 - Quartz Where custom constraints need to be registered using their own prop file, that has to be named just as the property to actually define these.
    *   Workaround: needs to have the org.terracotta.quartz.locality.evaluators.properties on this classpath with a single prop in it (org.terracotta.quartz.locality.evaluators) to define custom evaluators
*   [FORGE-594](https://jira.terracotta.org/jira/browse/CDV-1522) - Quartz avg load monitoring only supported on JDK6
*   [CDV-1522](https://jira.terracotta.org/jira/browse/CDV-1522) - LinkageError with ehcache jta & jetty (maven plugin)
*   [CDV-1564](https://jira.terracotta.org/jira/browse/CDV-1564) - Server backup and archive features do not cover search index files
*   [CDV-1565](https://jira.terracotta.org/jira/browse/CDV-1565)\- dirty objectdb move aside functionality does not archive search index files
    *   Workaround: have the full jta.jar on jetty's classpath and nowhere else, ie: exclude the geronimo jta jar from BTM's deps and make jta-1.1.jar provided.
*   5234 - Possible java.lang.Error when rapidly shutting down and restarting a Cache that uses the same disk file.
    *   Probably related to [http://bugs.sun.com/bugdatabase/view\_bug.do?bug\_id=4938372](http://bugs.sun.com/bugdatabase/view_bug.do?bug_id=4938372)
*   5050 - Due to [https://issues.apache.org/jira/browse/LUCENE-588](https://issues.apache.org/jira/browse/LUCENE-588) we are unable to support escaped wildcards in Search
*   5353 - If the L2 dies during cacheManager initialization itself, the thread will be stuck.

Document generated by Confluence on Oct 05, 2021 15:59

[Atlassian](http://www.atlassian.com/)
