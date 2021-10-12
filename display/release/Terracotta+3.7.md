---
title:  Terracotta 3.7  
lang: en
layout: page
keywords:
tags:
sidebar: lb2_sidebar
permalink: /display/release/Terracotta+3.7.html
summary:
---

The Terracotta 3.7.10 kit includes Terracotta 3.7.10, Ehcache 2.6.11 and Quartz 2.1.7



* TOC
{:toc}

The following may be applicable to using certain Ehcache cache modes with Hibernate:

<table class="confluenceTable"><tbody><tr><td class="highlight-grey confluenceTd" colspan="5" data-highlight-colour="grey" style="text-align: center;"><strong>HIBERNATE MODES</strong></td></tr><tr><th colspan="1" class="confluenceTh"><p>&nbsp;</p><p>EHCACHE MODES</p></th><th class="confluenceTh">Read-Only</th><th class="confluenceTh">Non-Strict Read-Write</th><th class="confluenceTh">Read-Write</th><th class="confluenceTh">Transactional</th></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><strong>Nonstop caches</strong></td><td class="confluenceTd">Good</td><td class="confluenceTd">Good (but can degrade)</td><td class="confluenceTd">Not Recommended</td><td class="confluenceTd">Not Recommended</td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><strong>Eventual consistency</strong></td><td class="confluenceTd">Good</td><td class="confluenceTd">Good (but can degrade)</td><td class="confluenceTd">Not Recommended</td><td class="confluenceTd">Not Recommended</td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><strong>Strong consistency</strong></td><td class="confluenceTd">Good</td><td class="confluenceTd">Good</td><td class="confluenceTd">Good</td><td class="confluenceTd">Not recommended</td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><strong>Transactional</strong></td><td class="confluenceTd">Not Recommended</td><td class="confluenceTd">Not Recommended</td><td class="confluenceTd">Not Recommended</td><td class="confluenceTd">Good</td></tr></tbody></table>

# Release Notes for Terracotta 3.7.10/Ehcache 2.6.11
==================================================

This is a bug fix release; and allows compatibility with Java 8.

#### Resolved Issues

*   5572 – Resolved runtime exception when running Terracotta 3.7.9 with Java 8

#### Known Issues

*   4427- stop-tc-server script does not recognize --secured option.
    *   Workaround:  use short versions of the flags
*   4433 - example10 under quartz/examples/example10 does not work
*   5641 -  Terracotta Distributed Shared Object (DSO) applications are not supported with Java 1.7 and 1.8. Hence the /terracotta-ee-3.7.10/platform/samples/pojo/chatter sample would not work with Java 1.7 and 1.8
*   5665 – Ehcache color cache sample fails to compile using Java 8
*   5677 - With Terracotta-ee-gt 3.7.10 kit when TSA is run as a service it results in No Class Def found Error.
    *   Workaround: add wrapper.java.additional.8=-[Dcom.tc.l2.db.factory.name](http://Dcom.tc.l2.db.factory.name)\=[com.tc](http://com.tc).objectserver.storage.derby.DerbyDBFactory in wrapper/conf/wrapper-tsa.conf file
*   7019 - IS unable to connect to secured (SSL-enabled) TSA when multipleCacheManagers are being initialized
    *   Workaround:  Use the following setting in IS:  
        
        watt.server.cachemanager.parallelThreads=1
        

# Release Notes for Terracotta 3.7.9/Ehcache 2.6.10
=================================================

This is a bug fix release.

#### **Resolved Issues**

*   4436 - Adapted script logic to reuse server startup port computation logic when JMX port is not explicitly defined.
*   4842 - Fixed issue where the Terracotta server is not starting after the server has been shut down from a split brain when the Server was started using the Tanuki Wrapper on Windows.

#### **Known Issues**

*   4427- stop-tc-server script does not recognize --secured option.
    *   Workaround:  use short versions of the flags
*   4433 - example10 under quartz/examples/example10 does not work

# Release Notes for Terracotta 3.7.8/Ehcache 2.6.9
================================================

This is a bug fix release.

#### Resolved Issues

*   63 - Terracotta Tools are now functional with an SSL secured Terracotta Server Array
*   90 - Fixed system.exit on UncaughtException in ehcache log
*   100 - Fixed TCStop script getting JMX IP connection from tc-config host argument only
*   101 - Fixed client connect getting IP connections from tc-config host argument only
*   115 - Clients fails due to emptly string in system property (com.terracotta.express.SecretProvider).  Error message fixed to clearly indicate what the issues is and will read: SecretProvider initialization: Couldn't load class "<classname>" (Check the value of property "com.terracotta.express.SecretProvider" or your classpath)    
    

#### Known Issues

*   4427- stop-tc-server script does not recognize --secured option.  
    *   Workaround:  use short versions of the flags
*   4433 - example10 under quartz/examples/example10 does not work

# Release Notes for Terracotta 3.7.7/Ehcache 2.6.8
================================================

This is a bug fix release.

#### Resolved Issues

*   222/979 - Remoted JMX MBeans are cleaned up after rejoin. 
*   269 - Fixed a race condition that caused channel disconnect before the L2 is finish performing the tunneling setup.
*   281 - Fixed memory leak issue when restarting clients.
*   976 - Allows security credentials to be obtained as an Object and as a String.
*   985 - Fixed default SSL context of the VM it runs on to avoid conflicts on the L1 side when this context is used by other clients.
*   8701 - Fixed the case where non-restartable caches were reusing search indexes persisted from a previous session.
*   8770 - Resolved reprobing issues in L1.

# Release Notes for Terracotta 3.7.6/Ehcache 2.6.6
================================================

Terracotta 3.7.6/Ehcache 2.6.6 is a bug fix release

#### Resolved Issues

*   9463 – Support for HP-UX

# Release Notes for Terracotta 3.7.5/Ehcache 2.6.6
================================================

Terracotta 3.7.5/Ehcache 2.6.6 is a bug fix release

#### Resolved Issues

*   9049 - resolved Cache search performance issues - Low CPU usage - Many threads waiting
*   8788 - resolved stop-tc-server fails when JMX Authentication is enabled.  
*   [EHC-1018](https://jira.terracotta.org/jira/browse/EHC-1018) - Intermittent "NaN Eviction Cost \[hit:NaN miss:NaN size:0\]" at CacheManager initialization time

# Release Notes for Terracotta 3.7.4/Ehcache 2.6.5
================================================

Terracotta 3.7.4/Ehcache 2.6.5 is a bug fix release

#### Resolved Issues

*   8775 -  Configurable IN operator in Search for data values - The default is 1024. Please contact your Terracotta Support Engineer to know more details - whether its relevant to your use case and how to configure it
*   8829 - Removed server-side restriction that would not allow executing multiple searches concurrently from the same Ehcache client
*   8783 - Resolved stray message printed on server startup
*   8465 - Added ability to add search indexes to an existing cache without reloading entries

# Release Notes for Terracotta 3.7.3/Ehcache 2.6.3
================================================

Terracotta 3.7.3/Ehcache 2.6.3 is a maintenance release. This release also supports Java SE 7 (please refer to the [Platform Support](Terracotta+3.7%2C+Ehcache+2.6%2C+Quartz+2.1+Platform+Support) page for specifics).

#### Additional Resolved Issues for Terracotta 3.7.3/Ehcache 2.6.3

8194 - Updated warning when erroneous configuration for Write Behind specified

# Release Notes for Terracotta 3.7.2
==================================

Terracotta 3.7.2 is a bug fix release. This kit includes Ehcache 2.6.2 and Quartz 2.1.6

#### Resolved Issues Terracotta 3.7.2

*   CDV-1631 - Terracotta Server does not close its TCP sockets for HTTP requests to port 9530
*   8216 - Cryptic message when client's com.terracottatech.console tries to connect to TSA
*   7972 - Client unable to connect if server in GC Pause in Active Active configuration with four active servers
*   7205 - Data pinning in cache should always keep the data in each L1

#### Resolved Issues Ehcache 2.6.2

*   8308 - NPE on local transaction commit
*   8234 - Resolve issue with  ConfigurationUtil.generateCacheManagerConfigurationText not producing nonstop element
*   8212 - Fix to handle a frequently empty object manager
*   8203 - Duplicate keys returned by method getKeys() of class Cache
*   EHC-976 - Search fails when copyOnRead and copyOnWrite are both set
*   EHC-973 - Failure while decoding key java.nio.HeapByteBuffer
*   EHC-962 - JavaDoc of Element.getValue() is wrong for non-Serializable values

# Release Notes for Terracotta 3.7.0
===================================

Release Notes for Ehcache 2.6.0 available [here](https://confluence.terracotta.org/display/rel/Ehcache+2.6.0+Release+Notes)

Terracotta 3.7.0 comes with key enhancements to Terracotta's In-memory Data Management offering including enhanced Security and improved Search performance.

# Summary of Changes
------------------

*   Security:  
    Terracotta 3.7 provides out-of-the-box security integration with transport level security via SSL and heightened security access for monitoring and managing deployments. All communications between Terracotta platform components can now be secured using SSL. All endpoints that are required to manage Terracotta deployments are secured and ensure secure propagation of user identity.

*   Search  
    With Terracotta 3.7, data is indexed without significant overhead, empowering users to conduct fast searches with predictable low latencies across terabytes of in-memory data. All Ehcache search features are now available for BigMemory in standalone mode, along with enhanced features like "GroupBy".

# Upgrading
---------

If you are upgrading from a previous version of Terracotta, note the following changes.

*   DEV-6920 - Searches of eventually consistent caches are now faster as queries are executed immediately without waiting for pending transactions at the local node to commit. In general, search results are eventually consistent with the caches. This change implies that, if a thread adds an element into an eventually consistent cache and immediately runs a query to fetch the element, it will not be visible in the search results until the update is published to the server. If you want pending transactions on the local node to commit before executing a search query, set the consistency option to "strong".

# Platform Changes
----------------

*   Supported JDK in Terracotta 3.7.0 is JDK 1.6
*   Terracotta 3.7.0 now supports JBOSS AS 7

# Known Issues
------------

*   If you are using security with the Terracotta Server Array,  
    *   your startup requires a manual entry of the keychain password so you will not be able use the "nohup" option.
    *   DEV-7568 - If two Terracotta servers are started, and at least one fails to authenticate the other, they will come up as two separate active servers (two independent clusters). This is applicable in a one-stripe scenario as well where one server was intended to be the mirror.

Please email any questions you have regarding this release to pm <at> terracotta.org


