---
title:  BigMemory Max 4.1  
lang: en
layout: page
keywords:
space: archive
sidebar: lb2_sidebar
permalink: /display/archive/BigMemory+Max+4.1.html
summary:
---

**BigMemory Max 4.1.11 is the latest release**. It includes Ehcache 2.8.10 and Quartz 2.2.1

_**Fixes are cumulative from version to version.**_


* TOC
{:toc}

#### **New Features**

BigMemory Max 4.1 introduces following new capabilities:

1.  **BigMemory Hybrid **Support for extended storage by leveraging SSD and Flash technologies in conjunction with DRAM.
2.  **Cross Language Clients **Support for .NET/C# and C++ clients to access and manage data in BigMemory.  
3.  **WAN Replication **Purpose-built support for data replication and recovery across WAN.  
4.  **BigMemory SQL** Support for using SQL when querying in-memory data.  Support for adhoc SQL queries available in TMC.
5.  Platform Enhancements

*   Improved Search - Optimizations in processing of result sets for client consumption
*   Full Cache lifecycle support when no clients connected to BigMemory
*   Seamless Data Upgrade - From version 4.1.0 onwards, data is preserved on upgrade when persistence is enabled

#### Configuration Changes

*   In the tc-config, the maxDataSize element is deprecated. The new Terracotta server (sizing) configuration is:
    
    <dataStorage size=”4TB”> // dataStorage size and offheap size are mandatory  
        <offheap size=”4GB”/>  // Minimum offheap size is 4 GB  
        <hybrid/> // optional element  
    </dataStorage>
    

#### **Summary of Changes 4.1.11**

##### **Resolved Issues**

*   7386 - Resolved a server based deadlock caused by a combination of backup, and various interconnected client transactions

##### Known Issues

*   5549 - when cross language connector is setup with Oracle Java 8 there is exception java.lang.ClassNotFoundException: com.pcbsys.foundation.drivers.jdk.null.fSSLContext
    *   Workaround:  Use Java 7

#### **Summary of Changes 4.1.10**

##### **Resolved Issues**

*   7254 – Updated JavaDoc for cache.getKeys() with clarifying warning message for when it takes a long time to complete operation
    
*   7292 – Resolved issue where bulkload state could become corrupted under a some rejoin conditions
    

##### **Known Issues**

*   5549 – when cross language connector is setup with Oracle Java 8 there is exception java.lang.ClassNotFoundException: com.pcbsys.foundation.drivers.jdk.null.fSSLContext
    
    *   Workaround:  Use Java 7

#### **Summary of Changes 4.1.9**

##### Resolved Issues

*   7121 – Corrected client-side lock retention during rejoin processing that resulted in incomplete rejoin and client-side exceptions during write-behind operations following a rejoin.
    
*   6789 –  Resolved issue where when multiple cache managers are configured, and the first cache manager is shutdown, TMC would not show remaining cache managers.  TMC now shows remaining cache manager(s) after the initial cache manager is shutdown.
    

##### Known Issues

*   5549 – when cross language connector is setup with Oracle Java 8 there is exception java.lang.ClassNotFoundException: com.pcbsys.foundation.drivers.jdk.null.fSSLContext
    *   Workaround:  Use Java 7

#### **Summary of Changes 4.1.8**

##### Resolved Issues

*   6584 – Corrected TransactionSequencer shutdown due to connection closure
    
*   6612 –"Destroy cache" functionality is now working; which wasn't working for BM 4.1.6 and BM 4.1.7.  
    

##### Known Issues

*   5549 – when cross language connector is setup with Oracle Java 8 there is exception java.lang.ClassNotFoundException: com.pcbsys.foundation.drivers.jdk.null.fSSLContext
    *   Workaround:  Use Java 7

#### Summary of Changes 4.1.7

##### Resolved Issues

*   3720 – Resolved exception error in TMC when user group is not found on LDAP.
*   4454 – Client can't rejoin after a network disconnect/reconnect
*   5757 – Fixed issue where ConfigurationUtil.generateCacheManagerConfigurationText did not create settings for TimeoutBehavior
*   6283 – Resolved issue where IS Terracotta client was not able to reconnect to TSA after network outage in certain specific circumstances
*   6290 – Fixed issue where TSA server failed with FRS assertion error
*   6493 – Terracotta Websession can support sticky sessions configured in WebSphere cluster environment.

##### Known Issues

*   5549 – when cross language connector is setup with Oracle Java 8 there is exception java.lang.ClassNotFoundException: com.pcbsys.foundation.drivers.jdk.null.fSSLContext
    *   Workaround:  Use Java 7

#### Summary of Changes 4.1.6

##### Resolved Issues

*   2574 – Non–persistent off heap stores call LuceneIndexedSearchManager.destroy() on create because of a potential reuse of a given offheap-backed standalone cache without a restart of the JVM.
*   4220 – Terracotta server no longer shuts down with long cache (searchable) name
*   4295 – When using the WAN Replication feature, rogue cache event listeners can hold up the cluster.
*   4300 – Resolved IOException due to a possible JDK bug in Ehcache.
*   4454 – Client can't rejoin after a network disconnect/reconnect
*   5194 – start–sample-server.bat now starts the server correctly
*   5372 – Now able to monitor TSAs using TMC when running as a Windows service
*   5548 – Resolved memory leak caused by TMC processes
*   5598/5801 - In some cases when there are network issues the node status is PASSIVE-UNINITIALIZED and does not change to PASSIVE-STANDBY
*   5647 - Terracotta cluster does not recover after specific type of network interruption

##### Known Issues

*   5549 – when cross language connector is setup with Oracle Java 8 there is exception java.lang.ClassNotFoundException: com.pcbsys.foundation.drivers.jdk.null.fSSLContext
    *   Workaround:  Use Java 7

#### Summary of Changes 4.1.5

##### Resolved Issues

*   3983 - Zap operator events are no longer logged at critical level in TMC.
*   4427 - stop-tc-server.sh now works with --secured (full word) option; secured option continues to work with -s.
*   4694 - Enabled password strength control in KeyAwareAction.
*   4789 - Fixed memory leak when repeatedly creating and then closing CacheManagers using the same Configuration object.
*   4808 - Specifying anything other than the path to a folder of jars for the userClassDirectory element will cause the WAN Replication orchestrator to crash unexpectedly.
*   4914 - Fixed mouse-over for read line in read/write operations graph to say "read" vs. "writes".
*   4931 –When FRS is ON and while multiple put operations are occurring on the cache, if there are simultaneous calls for cache clear on the same cache, there will be error message stating "Maximum permit count exceeded".
    

*   4941 - Resolved issue where Terracotta Server would not start when using IBM JDK 1.7.0 SR7.
*   4970 - start-wan.sh script is not working in HP-UX environment when started on bourne shell.

*   4979 - TMC now works in AIX and zLinux
*   5069 - Fixed regression of server-stat tool in 4.1.4 for default ports.
*   5084 - Fixed Terracotta server-stat.sh script failure.

##### Known Issues

*   4295 - When using the WAN Replication feature, rogue cache event listeners can hold up the cluster.
*   5549 – when cross language connector is setup with Oracle Java 8 there is exception java.lang.ClassNotFoundException: com.pcbsys.foundation.drivers.jdk.null.fSSLContext
    
    *   Workaround:  Use Java 7
        

#### Summary of Changes 4.1.4

##### Resolved Issues

*   1079 - Deadlock in ARC eviction when using explicit locks.
*   3169 - Fixed overwriting connection timeouts when connection settings are changed.
*   4006 - Fixed value axis format issues in TMC when a chart changed from non-memory stat to a memory stat.
*   4569 - Fixed error when trying to use lucene off-heap dir.
*   4729 – Fixed exception when creating multiple CacheManagers at the same time in different threads.
    
*   4734 - TMC now shows Size (MB) when localCacheEnabled set to false.
    
*   4741 - JDK 1.7 is required for BigMemory Cross-language Clients.
*   4775 - Fixed issue where search queries requesting top N results ordered by one ore more fields may result in OOME.
*   4798 - Resolved race condition in Fast Restartable Store with mass evictions/expirations.
*   4819 – In single stripe setup, certain combinations of puts, gets, and removeAlls may result in a deadlock.
    
    *   Workaround: set  <property name="l1.transactionmanager.folding.enabled" value="false"/> in the tc-properties of the tc-config.xml
        
*   4842 - Fixed issue where the Terracotta server is not starting after the server has been shut down from a split brain when the Server was started using the Tanuki Wrapper on Windows.
*   4847 - Fixed leak when Hybrid is enabled and FRS is disabled.
*   4872 - Resolved race condition in Fast Restartable Store with eviction transactions.

##### Known Issues

*   4808 - Specifying anything other than the path to a folder of jars for the userClassDirectory element will cause the orchestrator in WAN to crash unexpectedly.
*   4920 - PermGen usage of Clustered CacheManager is higher than in 4.0.x
*   4931 – On AIX/IBM zLinux when FRS is ON and while multiple put operations are occurring on the cache there are simulateneous calls for cache clear on the same cache there will be error message stating "Maximum permit count exceeded"
    
*   4970 - start-wan.sh script is not working in HP-UX environment when started on bourne shell
    
    *   Workaround: Change the 1s line of the start-wan.sh from #!/bin/sh to #!/bin/bash and run the script in a bash shell.
        
*   4979 - TMC is not starting in AIX and zLinux
    
    *   Workaround ([required files](/download/attachments/38834155/TC414AIXandzLinuxSupport.zip)): 
        
        *   <Specify the location of where the three files special-csrfguard.properties, special-web.xml  to download from> copy special-csrfguard.properties and special-web.xml to the /tools/management-console/
            
        *   In  INSTALL\_DIR/tools/management-console/contexts/tmc.xml
            
        *   Remove the line " <Set name="overrideDescriptor"><SystemProperty name="jetty.home" default="."/>/../special-web.xml</Set>"
            
        *   Then start the tmc as usual.
            

#### Summary of Changes 4.1.3

##### Resolved Issues

*   941/3962 - Throttling is too aggressive and leads to performance issues
*   4194 - Ehcache process hangs while trying to create unlicensed WAN enabled cache.
*   4415 - Transaction times out when removing all elements in an XA cache  
    
*   4436 - Adapted script logic to reuse server startup port computation logic when JMX port is not explicitly defined.
*   4454 - Client can rejoin after a network disconnect/reconnect 
*   4462 - Currently, WAN does not support caches over 100G.  For caches between 50G - 100G the command line options should be adjusted to the following memory settings "_\-Xms4g -Xmx4g_" in _kit/server/bin/start-wan.sh_.  TPS may be degraded during full sync.  We're working on fixing this issue in the next minor release 4.1.3.
*   4636 - Edge case in small disk size limits causes elements to not be correctly evicted

#### Summary of Changes 4.1.2

##### Resolved Issues

*   803 - System utilization is higher when using hybrid mode, and therefore not recommended to run multiple servers on the same machine, or to provision sufficient hardware.  Doing so may result health checkers timing out and killing/restarting servers.  Recommend having servers on different machines to alleviate the problem.

##### Known Issues

*   80 - "CacheManager without nonstop enabled may hang on shutdown when disconnected from server"
*   286 - Quartz Where integration with Ehcache does not work.
*   861 - Variable name changed from WAN\_EXT to WAN\_USER\_LIB.  Refer to [docs](http://www.terracotta.org/documentation/4.1/wan/introduction) for additional details.
*   4194 - Ehcache process hangs while trying to create unlicensed WAN enabled cache.
*   4369 - In TMC, when trying to delete large cache size (>230GB), destroy status dialog pops up and is non-movable until the delete has completed which can take a long time.   However, the actual operation of cache getting destroyed still happens even if you kill the browser window.
*   4344 - In TMC, when trying to clear cache (more than 1M), user gets an error dialog with the following message: "There was a problem clearing the cache [java.net](http://java.net).SocketTimeoutException: Read timed out".  However, the cache does get cleared.
*   4415 - Transaction times out when removing all elements in an XA cache 
*   4427- stop-tc-server script does not recognize --secured option.   
    *   Workaround:  use short versions of the flags
*   4433 - example10 under quartz/examples/example10 does not work without modification to classpath  
    *   Workaround:  add JTA api classes to classpath of start script
*   4462 - Currently, WAN does not support caches over 100G.  For caches between 50G - 100G the command line options should be adjusted to the following memory settings "_\-Xms4g -Xmx4g_" in _kit/server/bin/start-wan.sh_.  TPS may be degraded during full sync.  We're working on fixing this issue in the next minor release 4.1.3.

##### Platform Enhancements:

*   CAS operations  – Ability to run CAS operations in Eventual Consistency Mode

#### Summary of Changes 4.1.1

##### Resolved Issues

*   222/979 - Remoted JMX MBeans are cleaned up after rejoin.  
    
*   269 - Fixed a race condition that caused channel disconnect before the L2 is finish performing the tunneling setup.
*   270 - Fixed issue where exceptions in C++ occurred when an invalid query is given.  
    
*   281 - Fixed memory leak issue when restarting clients.  
    
*   512/1001 -  When editing the cluster connection location and timeouts, changes saved locally, but not in the admin.xml.  If there is a javascript error, the browser's cache should be cleared.
*   815 - TMC offline Data: Error dialog no longer appears when trying to destroy the cache manager and simultaneously start the client.
*   861 - Modified WAN classpath to include all jars from the user folder.
*   976 - Allows security credentials to be obtained as an Object and as a String.  
    
*   985 - Fixed default SSL context of the VM it runs on to avoid conflicts on the L1 side when this context is used by other clients.
*   995 - Fix to reduce the bulk of the heap usage by the event recorder

##### Known Issues

*   286 - Quartz Where integration with Ehcache does not work.
*   803 - System utilization is higher when using hybrid mode, and therefore not recommended to run multiple servers on the same machine, or to provision sufficient hardware.  Doing so may result health checkers timing out and killing/restarting servers.  Recommend having servers on different machines to alleviate the problem.

#### Known Issues in 4.1.0

*   269 - For Cross-Language Connector, NiravaSHM is not working with 32-bit dependencies on Linux.
*   270 - For Cross-Language Connector, Exceptions in C++ when an invalid query is given.
*   286 - Quartz Where integration with Ehcache does not work.
*   803 - System utilization is higher when using hybrid mode, and therefore not recommended to run multiple servers on the same machine, or to provision sufficient hardware.  Doing so may result health checkers timing out and killing/restarting servers.
    
*   815 - TMC offline Data: Error dialog appears when trying to destroy a cache manager and simultaneously starting a client.
*   861 - Users may sometimes want to use their own compound data types (POJOs) for keys and/or values aside from built-in strings, ints, etc. WAN solution requires that these user–defined classes be available in orchestrator's class path. This is a documented limitation.
    
      
    *   Workaround:  In order to use your own compound data type, 'WAN\_EXT' environment variable should be defined pointing to the jar's location. The WAN shell script will read this variable and construct a proper class path.
        

<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p style="margin-left: 90.0px;">Example:</p><p style="margin-left: 90.0px;">export WAN_EXT=/temp/ext<br>kit/server/bin/start-wan.sh -f /temp/wan.xml</p><p style="margin-left: 90.0px;">All .jar files under /temp/ext directory will be added to the WAN orchestrator's class path.</p></td></tr></tbody></table>

Attachments:
------------

![Bullet](images/icons/bullet_blue.gif) [TC414AIXandzLinuxSupport.zip](/download/attachments/38834155/TC414AIXandzLinuxSupport.zip) (application/zip)  


