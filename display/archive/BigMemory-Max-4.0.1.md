---
title:  BigMemory Max 4.0.1  
lang: en
layout: page
keywords:
space: archive
sidebar: lb2_sidebar
permalink: /display/archive/BigMemory+Max+4.0.1.html
summary:
---

BigMemory Max 4.0.1 is a General Availability ("GA") release of BigMemory Max 4.

Summary of Changes 
-------------------

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

See the [TSA Configuration Reference](http://terracotta.org/documentation/bigmemorymax/terracotta-server-array/config-reference) for a complete listing and definitions of configuration elements.

#### Configuration changes to admin.xml (when upgrading from 4.0.0 to 4.0.1)

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

BigMemory Max 4.0.1 is certified to run on _Oracle _Solaris 11 and _Red Hat_ Enterprise Linux _6_. It supports additional containers including new versions of _Oracle_ WebLogic and _IBM_ WebSphere Application Server.  Please refer to the Platform Support Page for details.

Known Issues
------------

*   9832 - creating a deadlock when removing and add same name cache in a CacheManager  
    *   Workaround: Remove cacheManager.removeCache() from code, or use explicit locking on the CacheManager before doing adds and removes.
*   9909 - TMC: Special characters are not supported for cache and CacheManager names, and fail at CacheManager/Cache creation time. See [this page](http://terracotta.org/documentation/tms/tms-troubleshooting#bad-name) for more information.
*   9132 - Server utility scripts will not work on a server that is just starting up or while it is recovering using FRS.
*   9804 - On startup may see error message "INFO: Unavailable or unrecognised attach API : java.lang.ClassNotFoundException: com.sun.tools.attach.VirtualMachine"  
    *   Must run with full JDK not JRE
*   9793 - Clearing a distributed cache can take more time than the TMC's default readTimeout of 15 seconds. If this happens you'll be presented a false-negative dialog, but the cache will be cleared even though the timeout fired. The only way to resolve this issue is to increase your readTimeout such that the clear operation finishes. You can edit the readTimeout for standalone (custom) connection groups directly within the TMC Settings dialog. For clustered connections you need to manually edit ~/.tc/mgmt/server/<user>.xml on the host where the TMS is deployed, and restart the TMS.
*   9857 - Server may exit with a ServerTransactionManager error after restart under heavy load.
*   9856 - Under heavy load using Resource Management throttling may not kick in before server goes to restricted mode.
*   9858 - In the TMC, if a dashboard is explicitly hidden, it may reappear if unread events are received and displayed in the events table.
*   9864 - The TMC may not display correct sizes in offheap graphs for large caches.
*   9872 - Erroneous warning about health check settings being misconfigured.   
    *   It is safe to disregard the warning if no health checker settings are configured.  [](https://jira.terracotta.org/jira/browse/DEV-9872)  
        


