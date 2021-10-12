---
title:  BigMemory Max 4.0  
lang: en
layout: page
keywords:
tags:
sidebar: lb2_sidebar
permalink: /display/release/BigMemory+Max+4.0.html
summary:
---

BigMemory Max 4.0.8 is the latest  release of BigMemory Max 4.0. It includes Ehcache 2.7.8 and Quartz 2.2.1


* TOC
{:toc}

Summary of Changes 4.0.8
------------------------

BigMemory Max 4.0.8, Ehcache 2.7.8 and Quartz 2.2.1 is a bug fix release

#### Resolved Issues

*   4989 – Running stop-td-server script with –s (secured) and –u (username) option with no tc-config file specified no longer gives error trying to find the default tc-config file.
*   5345 – Resolved issue causing JMX connection leak between two Terracotta Servers
*   5548 – Resolved OutOfMemoryErrors when accessing management REST APIs

#### Known Issues

*   3097 - User might experience GC issues on L1 side when bulk load is ON. It can be remedied by GC tuning.
*   4521 - The stop-tc-server script in a secured TSA environment may not display error messages and appear to be successful when it is not. Set java properties "-Dtc.ssl.trustAllCerts=true -Dtc.ssl.disableHostnameVerifier=true" if you are using a self-signed certificate, and refer to [http://www.terracotta.org/documentation/4.0/terracotta-server-array/tsa-security](http://www.terracotta.org/documentation/4.0/terracotta-server-array/tsa-security) for more help about possible errors.

Summary of Changes 4.0.7
------------------------

BigMemory Max 4.0.7, Ehcache 2.7.7 and Quartz 2.2.1 is a bug fix release

#### Resolved Issues

*   4436 - server-stat script will now work with an unspecified jmx-port or auto-calculate it based on the specified tsa-port.
*   4508 - The usermanagement script no longer fails to create the authentication file if the target file is on a different filesystem.
    
*   4518/4526 - The server-stat script in secured mode is now able to find the license key in the root install folder.
*   4941 - Resolved issue where Terracotta Server would not start when using IBM JDK 1.7.0 SR7.
*   5084 - Fixed Terracotta server-stat.sh script failure when jmx bind parameter specified with tc-config.xml.
*   5213 - Fixed bug causing "no route to host" error.
*   5237 - Disabled SSLv3 from use by TMS.
*   5271 - Disabled SSLv3 from Server Ports.

#### Known Issues

*   3097 - User might experience GC issues on L1 side when bulk load is ON. It can be remedied by GC tuning.
*   4521 - The stop-tc-server script in a secured TSA environment may not display error messages and appear to be successful when it is not. Set java properties "-Dtc.ssl.trustAllCerts=true -Dtc.ssl.disableHostnameVerifier=true" if you are using a self-signed certificate, and refer to [http://www.terracotta.org/documentation/4.0/terracotta-server-array/tsa-security](http://www.terracotta.org/documentation/4.0/terracotta-server-array/tsa-security) for more help about possible errors.
*   4989 – Running stop-tc-server script with –s (secured) and –u (username) option with no tc-config file specified gives error trying to find the default tc-config file.
    
    *   Workaround: Additionally specify the tc-config file explicitly with “–f tc-config.xml”
        

Summary of Changes 4.0.6
------------------------

BigMemory Max 4.0.6, Ehcache 2.7.6 and Quartz 2.2.1 is a bug fix release

#### Resolved Issues

*   479/3297 - When trying to view entry based cache stats in the TMC, LocalHeapBytes always show 0 in the Overview panel
*   108 - Fixed NullPointerException in Cache Get in case of non-stop local reads at the time of initialization
*   2565 - Resolved race between Rejoin Worker and ConnectionEstablisher
*   3119 - Support multiple disconnects from L1 while rejoin-in-progress
*   3201 - Fixed ClientConnectEventHandler memory leak on client disconnects
*   3216 - Ability to "ignore" clustered cache configuration differences
*   3759 - Fix for handling monitoring when clients disconnect frequently
*   3876 - Fixed Terracotta server crash on restart of clients
*   4018 - Resolved deadlock/hang issue when performing concurrent get / replace operations 
*   4019 - Resolved ability for tools like JConsole to connect to secured Terracotta Server Array (over SSL).  Note: It is recommended TMC be used for monitoring TSA.
*   4020 - L2 shutting down due to "Uncaught Exception in L2\_L1:TCComm Main Selector Thread" 
*   4022 - Remoted JMX MBeans now cleared after rejoin
*   4240 - Multiple connections created in the dasboard, UI layout wrapped automatically as expected
*   4254 - After failover, TMC now displays the status as expected under Dashbaord Details, Adminstration, Monitoring and Trouble Shooting
*   4389 - Resolved classloading issue in secured Ehcache setup
*   4437 - Fixed Tomcat Hotdeploy - Memory Leak of PermGen space  
    

#### Known Issues

*   3097 - User might experience GC issues on L1 side when bulk load is ON. It can be remedied by GC tuning.
*   4508 - The usermanagement script may fail to create the authentication file if the target file is on a different filesystem. The file must be created on the main filesystem of the machine on which the command is issued. Once created, it can be moved safely as it does not contain any path information. 
*   4521 - The stop-tc-server script in a secured TSA environment may not display error messages and appear to be successful when it is not. Set java properties "-Dtc.ssl.trustAllCerts=true -Dtc.ssl.disableHostnameVerifier=true" if you are using a self-signed certificate, and refer to [http://www.terracotta.org/documentation/4.0/terracotta-server-array/tsa-security](http://www.terracotta.org/documentation/4.0/terracotta-server-array/tsa-security) for more help about possible errors.
*   4526 - The server-stat script in secured mode can not find the license key in the root install folder. Please make a copy of the license key available in the ~/bigmemory-max-4.0.6/server/ folder as well.

Summary of Changes 4.0.5
------------------------

BigMemory Max 4.0.5, Ehcache 2.7.5 and Quartz 2.2.1 is a bug fix release

#### Resolved Issues

*   45 – Group and Label connections on TMC; categorizing them as ehcache or others
*   77 – Programmatically added clustered caches and cache manager statistics will now show up on TMC
*   100 - Fixed TCStop script getting JMX IP connection from tc-config host argument only; now includes bind attribute.
*   126 - Fixed TMC rendering error
*   217 - Fix an issue on passive disconnect & join back
*   320 – Fix for rapid client connect/disconnect
*   408 - Fixed TMC issue with display of size  
    
*   463 - Shows correct status for passive server
*   464, 513 - Minor fixes in cluster connection edit page on TMC
*   512 - Edits to cluster connection attributes from TMC are now saved on disk
*   Ehcache - Misc improvements to the REST interface  
    

#### Known Issues

*   479 - When trying to view entry based cache stats in the TMC, LocalHeapBytes always show 0 in the Overview panel

Summary of Changes 4.0.4
------------------------

BigMemory Max 4.0.4, Ehcache 2.7.4 and Quartz 2.2.1 is a bug fix release

#### Resolved Issues

*   10 - Add rejoin support to clustered Quartz
*   63 - Fixed Writer Queue Length issue
*   85 - Fixed bug in the BM 4.0.2 release where tc.node-name system property is set at L1 side and becomes invisible to the agent unless at least one L1 without that system prop is connected.
*   103 - Addresed rejoin problem with Toolkit API.  Also reference documentation on [RejoinException](http://terracotta.org/documentation/4.0/bigmemorymax/terracotta-toolkit/toolkit-reference#reconnected-client-rejoin).  
    
*   161/301 - TMC REST Api /agents/cacheManagers return ALL the cache managers (i.e. the ones from standalone connections and the ones from the L1 clients)
*   111 - Networking issue resolving OOO selectLoop Outage
*   117 - TC Server no longer crashes when TMC connected to it  
    
*   113/228 - Fixed java.lang.ArithmeticException: / by zero when using BootstrapCacheLoader with BigMemory
*   176 - Resolved issue where Bulk Load API + Eternal="false" clears cache 
*   385 - Fixed bug to address Quartz shutting down the jobstore before all jobs are completed  
    
*   386 - Addressed exception error when retrieving and deleting trigger from JDBC job store  
    
*   387 - Fixed errors in Migration Guide and DDL files
*   401 - Fixed time/date issues
*   1042 - EhCache 2.7.1 leaks mmap references when using localTempSwap persistence
*   9906 - Session conflict between WebSessions and Glassfish in a clustered Glassfish environment

#### Known Issues

*   69 - WebSessions cart demo refers to dev console
*   75 -When programmatically configuring offheap-backed standalone Ehcache instances, it is recommended not to reuse the same cache name as one that has been previously removed from the same CacheManager instance.  Doing so may result in an exception thrown during the initialization of the newly added cache. If it is not possible to avoid such repeated use of previously referenced cache names, the workaround is to call CacheManager.shutdown(), prior to initialization of the cache with a recycled name.
*   77 - Clustered CacheManager and cache do not show up on the TMC console
    
    *   Workaround:  add the code for default cache configuration when creating a cache manager
        
*   79 - If a user runs an L2 with a "default" configuration, it would start up with no off heap. This is not a supported configuration. 
*   126 - There are currently some rendering issues with TMC.  
    
*   271 - Connection to TSA is currently limited to 32 entries.  
    
*   SQL error when Quartz is hitting the DB to check-in (OPTION SQL\_SELECT\_LIMIT=DEFAULT SQL Error)  
    *   This is not a Quartz issue, but an issue with the JDBC driver.  Please update driver.  
        

Summary of Changes 4.0.3
------------------------

BigMemory Max 4.0.3, Ehcache 2.7.3 and Quartz 2.2.0 is a bug fix release

#### Resolved Issues

*   9534 - Reduces the ObjectIDSet size to prevent the gradual increase of heap usage over time.
*   50 - System properties workaround for excessive statistics threads created for Ehcache 2.7.3

#### Known Issues

*   Can't stop L2 with the stop-server script when running in secure mode
    *   Work around:  Specify admin role in the auth part of the server configuration.

Summary of Changes 4.0.2
------------------------

#### Terracotta Quartz

Support for Quartz Scheduler is included in Bigmemory Max 4.0.2 kit. Rejoin functionality is not supported in this version of Clustered Quartz for BigMemory

Quartz 2.2.0 fixes can be found  [in JIRA](https://jira.terracotta.org/jira/browse/QTZ/fixforversion/11041)  

#### Resolved Issues

*   9793 - Clearing a distributed cache can take more time than the TMC's default readTimeout of 15 seconds. If this happens you'll be presented a false-negative dialog, but the cache will be cleared even though the timeout fired.
*   9857 - Server may exit with a ServerTransactionManager error after restart under heavy load.
*   9856 - Under heavy load using Resource Management throttling may not kick in before server goes to restricted mode.
*   9864 - TMC may show incorrect  max value for offheap usage usage under heavy load.
*   9872 - Erroneous warning about health check settings being misconfigured.
    
*   3 - clearReference should not be called from L1 cache manager assertion
    

#### Known Issues

*   Rejoin is not supported for Clustered Quartz
*   Glassfish Valves are not supported for WebSessions

Summary of Changes 4.0.1  

---------------------------

#### Scale & Performance

BigMemory Max 4.0.1 scales and performs to even higher limits.  Some improvements include optimizations to bulk load catering to the new simplified resource management introduced in BigMemory 4 and performance improvements for data access on re-join.

#### Search

BigMemory Max 4.0.1 has significant enhancements to Search performance and usability.

#### Terracotta Management Platform

BigMemory Max 4.0.1 brings significant enhancements to Terracotta management platform based on customer feedback.  It includes many user interface improvements in TMC and support for additional REST APIs.

#### Terracotta Web Sessions

Support for Web Sessions is included in BigMemory Max 4.0.1 kit. For more information, see [Release Notes](Web+Sessions+4.0.0)

Upgrading
---------

#### Configuring Security for the Terracotta Server Array

The Terracotta keychain file for the Terracotta Server Array (TSA) now uses the obfuscation scheme by default. If you have configured security for the TSA, and prefer to retain the original encryption scheme for the keychain file, you must explicitly configure the following secret provider in the Terracotta configuration file:

  
<servers security="true">  
...  
  <server ... >  
    <security>  
      <keychain>  
        ..  
        <secret-provider>com.terracotta.management.security.ConsoleFetchingBackend</secret-provider>  

#### Simplified Configuration of tc-config

If you are upgrading from an earlier version of Terracotta configuration, note that tc-config.xml has extensive changes:

*   The <mirror-group> element can now wrap <server> configuration blocks, eliminating the need to repeat the setup of <server> information.
*   <dso-port> is renamed to <tsa-port>, and <l2-group-port> is renamed to <tsa-group-port>.
*   <client-reconnect-window>, <garbage-collection> (DGC), and <restartable> settings are now global for all servers.  
    
*   The <data> element specifies where to store data files used for the fast-restartable feature.
*   The <clients> section now has one setting, <logs>.
*   <security> is a new configuration block for setting up authorization/authentication and SSL.
*    <offheap>, which used to be part a <persistence> configuration block, is now an independent element directly under <server>.
*   <dso>, <system>, <statistics>, <persistence>, and <ha> (and, unless otherwise noted, any sub-elements) have been removed.

See the [TSA Configuration Reference](http://www.terracotta.org/documentation/4.0/terracotta-server-array/config-reference) for a complete listing and definitions of configuration elements.

#### Terracotta Management Server and Console

##### Compatible Browsers  

The Terracotta Management Console should work flawlessly with most modern web browsers. The following have been tested: Firefox 19, Google Chrome 26, Microsoft Internet Explorer 9.

##### Configuration changes to admin.xml (when upgrading from 4.0.0 to 4.0.1)

TMS has changed admin.xml format. While upgrading to 4.0.1 from 4.0.0, a new file will be created and the old configuration information will be available in a backup file in folder : ~/mgmt/server/. Connections can also be established using TMC via the new Connection link on home page.

**BigMemory Max 4.0.0**:  
<monitoredClusters>  
<cluster id="MyLocalCluster">  
<agent name="Connection" agentLocation="http://localhost:9530"/\>  
</cluster>  
</monitoredClusters>

**BigMemory Max 4.0.1**:  
<monitoredClusters>  
<cluster id="MyLocalCluster" agentLocation="[http://localhost:9530](http://localhost:9530)" />  
</monitoredClusters>

Platform Changes
----------------

BigMemory Max 4.0.1 is certified to run on _Oracle _Solaris 11 and _Red Hat_ Enterprise Linux _6_ in addition to the existing supported platforms. It supports additional containers including new versions of _Oracle_ WebLogic and _IBM_ WebSphere Application Server.  Please refer to the Platform Support Page for details.

Known Issues
------------

*   9832 - creating a deadlock when removing and add same name cache in a CacheManager  
    *   Workaround: Remove cacheManager.removeCache() from code, or use explicit locking on the CacheManager before doing adds and removes.
*   9909 - TMC: Special characters are not supported for cache and CacheManager names, and fail at CacheManager/Cache creation time. See [this page](http://terracotta.org/documentation/tms/tms-troubleshooting#bad-name) for more information.
*   9132 - Server utility scripts will not work on a server that is just starting up or while it is recovering using FRS.
*   9804 - On startup may see error message "INFO: Unavailable or unrecognised attach API : java.lang.ClassNotFoundException: com.sun.tools.attach.VirtualMachine"  
    *   Must run with full JDK not JRE
*   9858 - In the TMC, if a dashboard is explicitly hidden, it may reappear if unread events are received and displayed in the events table.  
     [](https://jira.terracotta.org/jira/browse/DEV-9872)  
    
*     
    


