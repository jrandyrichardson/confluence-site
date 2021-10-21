---
title:  BigMemory Max 4.3  
lang: en
layout: page
keywords:
space: release
sidebar: lb2_sidebar
permalink: /display/release/BigMemory+Max+4.3.html
summary:
---

BigMemory Max 4.3.9 (April 2021) is the latest release. It includes Ehcache 2.10.9.

Fixes are cumulative from version to version.

### **Deprecation Notices**

Software AG intends to deprecate and remove from distribution the WAN Replication Service/Module in the next release (4.3.10, late 2021).

Software AG intends to deprecate the Web Sessions product in the next release (4.3.10, late 2021).



**New Features**
-------------------

BigMemory Max 4.3.0 introduced following new capabilities:

1.  Terracotta Management Console (TMC) extended to support WAN Replication Service: The WAN tab enables monitoring of information about the following aspects of the WAN Replication Service:
    1.  WAN's topology and configuration information
    2.  Performance statistics and details of their deployment, such as the orchestrator topology, configuration, and status of each WAN-enabled cache. 
2.  Support for Java 8
3.  Support for RedHat EL7 (server)
4.  Ability to restrict TMC access to execute adhoc(BigMemory) SQL (BigMemory 4.3.1)
5.  Support for SUSE Linux Enterprise 12 (BigMemory 4.3.1)
6.  A simpler version (IP whitelist) of access restrictions has been added (restricting access to a list of provided IP addresses) (BigMemory 4.3.2)
7.  Failover Tuning – Data consistency for cross-data center clustering (BigMemory 4.3.3)
8.  Support for Tomcat 8 (BigMemory 4.3.3)
9.  Quartz no longer supported (BigMemory 4.3.3)
10.  Added Docker to Terracotta kit for SAG Install (BigMemory 4.3.4)
11.  Support for Windows Server 2016 (BigMemory 4.3.4)

### Summary of Changes in 4.3.10
####     New in Terracotta BigMemory 4.3.10

* Prometheus support for BigMemory Max monitoring/stats.
* WAN modularized into own tar file, removed from BigMemory Max kit as it was previously deprecated (notice given in early 2021).
* WebSessions modularized into own tar file, removed from BigMemory Max kit as it was previously deprecated (notice given in early 2021).

####    Security Updates

* Contains all security updates included in BigMemory 4.3.9.4

#### Resolved

* Contains all defect solutions included in BigMemory 4.3.9.4




### Summary of Changes in 4.3.9

####        New in Terracotta BigMemory 4.3.9

*   Java 11 officially supported (along with Java 8)
*   Command Central SPM Plugin:  Secured connections (SSL/TLS) now supported.

####      Security Updates to Third Party Libraries

*   7857 - Shiro component updated to version 1.7.0.
*   7913 - Bootstrap updated to version 4.5.2.
*   7898 - Jetty updated to version 9.4.35.
*   Various other 3rd party library updates

####       Resolved

*   7912 - Terracotta Management Console (TMC) Offline Data panel fails to initialize when security enabled and the username contains special characters.
*   7903 - Terracotta Management Console (TMC) not displaying Caching Clients Information correctly. 

####      Notes

     The upgrade of 3rd party library Shiro creates an issue that will require a configuration change for some users.  URLs containing semi-colon are blocked and 400 client error is thrown.

      To solve this issue, add the following 2 lines if they don't exist already at the very top under the \[main\] section of file ~/.tc/mgmt/shiro.ini

{% highlight ini %}

[main]
invalidRequest = org.apache.shiro.web.filter.InvalidRequestFilter
invalidRequest.blockSemicolon = false

{% endhighlight %}  

### Summary of Changes in 4.3.8

#### New in Terracotta BigMemory 4.3.8

*   Logging moved from (directly) "log4j" framework to "logback".

#### Resolved

*   7589 - Remove misleading warning during election
*   7686 - Resolve issue with remaining lock file preventing start of TMS/TMC
*   7760 - Optional TC property "http.enable.socket.reclaimer" introduced to enable forced extra attempts to close sockets that have encountered connectivity errors
*   7762 - Silence unnecessary logging noise

#### Known Issues

*   4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".

#### Notes

Users who have previously configured authentication settings for the TMS/TMC may need to make a manual file edits in order to be able to log in after applying fixes. The symptom of this need is a blank browser page or a message from the browser indicating too many redirects, or similar.  
To fix the problem edit the "shiro.ini" found in the ".tc/mgmt" directory of the user's home folder (the user that the TMS/TMC process runs as). In this text file locate the line (typically near the bottom) that reads "/login.jsp = authc". Immediately above that line, add the three following lines if they are not present:

```
/401.jsp = anon
/403.jsp = anon
/404 = anon
```



### Summary of Changes in 4.3.7

#### New in Terracotta BigMemory 4.3.7

*   Improvements and new options for Terracotta server start/stop commands to facilitate safer automation of operations

#### Resolved

*   7697 - Fixed issue with fully cleaning up SSE socket connections (from TMC) when connection is parially broken unexpectedly

#### Known Issues

*   4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".

### Summary of Changes in 4.3.6.5

#### Resolved

*   7683 - Fixed a potential file descriptor leak in the TSA’s management agent that was introduced in version 4.3.6.

#### Known Issues

*   4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".

### Summary of Changes in 4.3.6.4

#### Resolved

*   7653 - Fixes Socket leak when unexpected requests appear on the tsaPort and groupPort
*   7666 - Disable HTTP TRACE on all server web interfaces

#### Known Issues

*   4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".

### Summary of Changes in 4.3.6.3

#### Resolved

*   7626 – Resolved issue where an unhandled java.util.ConcurrentModificationException causes Terracotta Server Array to crash.
*   7592 – Resolved issue to always consider timeout settings and propagate them explicitly to the internal HttpClient.

#### Known Issues

*   4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".

### Summary of Changes in 4.3.6.2

#### Resolved

*   7586 - The service wrapper has been modified to only ever automatically restart the Terracotta Server when it starts up as a passive and determines it has a dirty database. Please refer to server/wrapper/README.txt, Sect. 6 BASIS FOR DEFAULT CONFIGURATION for more details.

#### Known Issues

*   4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".

### Summary of Changes in 4.3.6.1

#### Resolved

*   7563 – Expanded search monitoring to include oversized query results.  Added system property (tc.searchmonitor.oversizedQueryLogging=N) which can be used to set a minimum at which point there will be a warning logged if a query result set on a server exceeds the amount.

*   7580 – Upgraded to netty 3.9.8 to resolve security vulnerability CVE-2015-2156

#### Known Issues

*   4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".

### Summary of Changes in 4.3.6

#### Resolved

*   7388 – Update httpclient libraries to resolve security vulnerability CVE-2015-5262
*   7429 – Addressed security vulnerabilities CVE-2017-7525, CVE-2014-0114, and CVE-2017-9735
*   7518 – Resolved security vulnerability CVE-2015-2080

#### Known Issues

*   4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".

### Summary of Changes in 4.3.5.2

#### Resolved

*   7517 – Upgraded Jackson-Databind to version 2.9.5 to address security vulnerabilities

#### Known Issues

*   4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".
*   7373 – The bigmemory-max-4.3.4.3.15/README.txt file references "cmmon – Directory containing common libraries”, however common directory no longer exists.
*   7375 - If you have Terracotta Integration for Designer fix 2 already installed on 10.1 installation, then applying this fix 3 may fail during installation.
    *   _Workaround for this problem is to reinstall Terracotta Designer component using SAG Installer and apply this fix 3 directly_

### Summary of Changes in 4.3.5.1

#### Resolved

*   7214 – Fixed memory leak caused by dynamically creating and removing caches
*   7450 - Fix for case where rapid intermixing of client rejoins and beginning paginated searches could crash the server.
*   7462 – Fixed issue where Command Central reports that Terracotta Server Array is "Unresponsive" when <failover-priority> configuration element is present in tc-config.xml. This issue is due to a XML validation-error, where Platform Manager is using an out-dated XML-schema. 
*   7480 – Resolved hybrid storage mode race condition that may occur between appender and reader threads for doing fsync when there are read and writes in parallel; which then may lead to server crash.
*   7483 – Resolved ArrayIndexOutOfBoundException error after TC node startup.
*   7507 – Resolved issue where Terracotta Active crashes when synching search index data to Passive with “[java.io](http://java.io).FileNotFoundException” error.  This occurs when paginated searches are in-progress.

#### Known Issues

*   4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".
*   7373 – The bigmemory-max-4.3.4.3.15/README.txt file references "cmmon – Directory containing common libraries”, however common directory no longer exists.
*   7375 - If you have Terracotta Integration for Designer fix 2 already installed on 10.1 installation, then applying this fix 3 may fail during installation.
    *   _Workaround for this problem is to reinstall Terracotta Designer component using SAG Installer and apply this fix 3 directly_

### Summary of Changes in 4.3.5

#### Resolved

*   7396/7423 – Resolved null pointer exception issue that occurs when the server tries to process an already applied replace operation that has been re-sent by a client on a server failover or a serverstart.

#### Known Issues

*   4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".
*   7373 – The bigmemory-max-4.3.4.3.15/README.txt file references "cmmon – Directory containing common libraries”, however common directory no longer exists.
*   7375 - If you have Terracotta Integration for Designer fix 2 already installed on 10.1 installation, then applying this fix 3 may fail during installation.  
    *   Workaround for this problem is to reinstall Terracotta Designer component using SAG Installer and apply this fix 3 directly
*   7450 - This fix is not part of this version.  (Fix for case where rapid intermixing of client rejoins and beginning paginated searches could crash the server.)
*   7480 - This fix is not part of this version.
*   7483 - This fix is not part of this version.
*   7507 - This fix is not part of this version.

### Summary of Changes in 4.3.4.6

#### Resolved

*   7480 – Resolved hybrid storage mode race condition that may occur between appender and reader threads for doing fsync when there are read and writes in parallel; which then may lead to server crash.
*   7483 – Resolved ArrayIndexOutOfBoundException error after TC node startup.
*   7507 – Resolved issue where Terracotta Active crashes when synching search index data to Passive with “[java.io](http://java.io).FileNotFoundException” error.  This occurs when paginated searches are in-progress.

#### Known Issues

*   4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".
*   7373 – The bigmemory-max-4.3.4.3.15/README.txt file references "cmmon – Directory containing common libraries”, however common directory no longer exists.
*   7375 - If you have Terracotta Integration for Designer fix 2 already installed on 10.1 installation, then applying this fix 3 may fail during installation.  
    *   Workaround for this problem is to reinstall Terracotta Designer component using SAG Installer and apply this fix 3 directly

### Summary of Changes in 4.3.4.5

#### Resolved

*   7423 – Resolved null pointer exception issue that occurs when the server tries to process an already applied replace operation that has been re-sent by a client on a server failover or a server restart. 
*   7450 - Fix for case where rapid intermixing of client rejoins and beginning paginated searches could crash the server.

#### Known Issues

*   4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".
*   7373 – The bigmemory-max-4.3.4.3.15/README.txt file references "cmmon – Directory containing common libraries”, however common directory no longer exists.
*   7375 - If you have Terracotta Integration for Designer fix 2 already installed on 10.1 installation, then applying this fix 3 may fail during installation.  
    *   Workaround for this problem is to reinstall Terracotta Designer component using SAG Installer and apply this fix 3 directly

### Summary of Changes in 4.3.4.4

#### Resolved

*   7394 - Fixed terracotta server startup issue encountered with recent IBM Java 1.8 update(Refresh 5 or later).

#### Known Issues

*   4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".
*   7373 – The bigmemory-max-4.3.4.3.15/README.txt file references "cmmon – Directory containing common libraries”, however common directory no longer exists.
*   7375 - If you have Terracotta Integration for Designer fix 2 already installed on 10.1 installation, then applying this fix 3 may fail during installation.  
    *   Workaround for this problem is to reinstall Terracotta Designer component using SAG Installer and apply this fix 3 directly

### Summary of Changes in 4.3.4.3

#### Resolved

*   7282 – Fixed minor issue with non-numeric strings being handled by Command Central plugin
*   7348  - Fixed potential concurrency problem with search results when multiple searches are performed simultaneously on two Caches within the same CacheManager
*   7359 - Changed default settings of Tanuki wrapper to avoid possible restart problems after a fail-over

#### Known Issues

*   4984 - Port 9540 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".
*   7373 – The bigmemory-max-4.3.4.3.15/README.txt file references "cmmon – Directory containing common libraries”, however common directory no longer exists.
*   7375 - If you have Terracotta Integration for Designer fix 2 already installed on 10.1 installation, then applying this fix 3 may fail during installation.  
    *   Workaround for this problem is to reinstall Terracotta Designer component using SAG Installer and apply this fix 3 directly



### Summary of Changes in 4.3.4.2

#### Resolved

*   7287 – Resolved bug to allow clients to rejoin a cluster when both Active-Active and Security are configured. 

#### Known Issues

*   4984 - Port 9520 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".

### Summary of Changes in 4.3.4

#### Resolved

*   7213 – Fixed server mistakenly kicking out clients with "Error hydrating message of type REQUEST\_MANAGED\_OBJECT\_MESSAGE (12) java.lang.UnsupportedOperationException: Inserts out of order"
*   7244 - Fixed the issue of an exception being thrown while executing a query with key as search attribute. This issue was seen only on installations with WAN replication enabled.

#### Known Issues

*   4984 - Port 9520 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".

### Summary of Changes in 4.3.3.1

#### Resolved

*   7022 – Fixed TMC showing duplicates of Operator Events under some circumstances. E.g. Having multiple concurrent browser sessions.
*   7091 - Fixed bug causing TMC on same localhost is slow with Connection refused  


#### Known Issues

*   4984 - Port 9520 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".

### Summary of Changes in 4.3.3

#### Resolved

*   6764 – Resolved issue where due to network issues, client connections were not cleared after clients were disconnected thereby causing the license policy to reject connections for new clients.

*   6785 – Resolved issue where excessive number of threads were created by Jersey Client causing issues with memory resources.
*   6996 - Documentation update to show BigMemory 4.1 and later versions now support the FRS "SizeBasedCompactionPolicy"
*   7019 - Fixed security-keychain bug that would sometimes not allow IS to start when connected to Terracotta 
*   7034 –  SSL documenation updated
    *   Added a new section "Scope of the SSL documentation"
    *   Added hints about -trustcacerts and the KeyStore Explorer GUI.

#### Known Issues

*   4984 - Port 9520 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".



### Summary of Changes in 4.3.2.2

#### Resolved

*   6785 – Resolved issue where excessive number of threads were created by Jersey Client causing issues with memory resources.
*   6764 – Resolved issue where due to network issues, client connections were not cleared after clients were disconnected thereby causing the license policy to reject connections for new clients. 

#### Known Issues

*   4984 - Port 9520 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".

### Summary of Changes in 4.3.2.1

#### Resolved

*   6569 – Resolved startup error when terracotta is launched from wrapper script or Command Central

*   6636 - Resolved memory leak issue caused by Jersey 2.6 client listeners

#### Known Issues

*   4984 - Port 9520 is no longer valid.  Actual IP address will show versus the loopback one.

*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".


### Summary of Changes in 4.3.2

#### Resolved

*   6493 – Validated Websessions on Websphere

*   6542 – Resolved error when configuring Active Direction in TMC

*   6569 – Resolved startup error when terracotta is launched from wrapper script or Command Central.

*   6576 – Fixed issue handling special characters in connection URLs in keychains

*   6584 – Corrected TransactionSequencer shutdown due to connection closure


#### Known Issues

*   4984 - Port 9520 is no longer valid.  Actual IP address will show versus the loopback one.
*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".

### Summary of Changes in 4.3.1.2

#### Resolved

*   6576 – Fixed issue handling special characters in connection URLs in keychains
*   6636 - Resolved memory leak issue caused by Jersey 2.6 client listeners

#### Known Issues

*   4984 - Port 9520 is no longer valid.  Actual IP address will show versus the loopback one.


*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".


### Summary of Changes in 4.3.1.1

#### Resolved

*   3720 – Resolved exception error in TMC when user group is not found on LDAP.
*   4687 - The BeanShell feature, previously used for troubleshooting internal server issues, has been removed from the Terracotta Server a it was a security vulnerability.
*   5513 - Stopping terracotta server from TMC no longer fails if server is started as service.
*   6169 - Resolved issue where the debug-tool is not honoring the -z flag on Windows and generating thread dump on console
*   6174 - Resolved bug with CacheEventListener.notifyElementEvicted returning byte\[\] instead of actual Element object when using copy on read strategy
*   6184 - TMC reports cluster status as UNREACHABLE if any of of cluster nodes is not running.This happens when TMC is running on windows machine with stealth mode firewall option enabled.
*   6293 - Apache Shiro, security framework used in terracotta, is upgraded to 1.2.4
*   6347 – Added warning message in log when TC Server off heap is configured to less than 2GB
*   6357 - Resolved issue where TMC crates excessive "see-flush–timer" threads.

#### Known Issues

*   4984 - Port 9520 is no longer valid.  Actual IP address will show versus the loopback one.

*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".


### Summary of Changes in 4.3.1

#### Resolved

*   5036 – Resolved visual defect to align data points on graph in TMC
*   5249 – Fixed TMC log's pause button to correctly pause if there is a pending request in the background
*   5272 – Allows symmetrical, bidirectional cache replication
*   5462 – When the WAN Master Orchestrator of Region 1 is terminated,  and using TMC, the Region 2 Master Orchestrator status is listed as unknown by the Replica option in the Topology configuration
*   5490 - User is now able to view off-line data in the TMC using IE11 browser
*   5531 – Increased TMS scalability (support larger number of clients) via JMX usage optimization
*   5548 – Corrected memory leak within TMC
*   5599 – Default off heap size set to 2GB along with warning message when size not specified 
*   5602 -  Resolved TMC issue to show number of filtered clients when filtering remote addresses of connected clients in a large cluster
*   5647 – Resolved issue where Terracotta cluster could not recover after a specific type of network interruption
*   5757 – Corrected issue for properly generating TimeoutBehavior element
*   6027 – Resolved deadlock possibility for cases with 2 threads and 2 locks when shutting down clustered cache manager
*   6134 – Fixed issue with Quartz MBeans not being exposed to the JMX server

#### Known Issues

*   4984 - Port 9520 is no longer valid.  Actual IP address will show versus the loopback one.

*   5477 - When user kills Master Orchestrator and Replica Orchestrator, some caches in Region 1 return "OrchestratorAlive" to be "true".

*   5513 - Stopping of TSA from TMC fails when TSA is started as a service.


### Summary of Changes in 4.3.0.1

#### Resolved

*   5503 - "Unresponsive script" dialog no longer appears, when connected with 560 clients.

*   5557 – Resolved issue that resulted in NullPointerException and server was terminated when large number of clients simultaneously connect with the TSA server.
*   5598 – Resolved issue where a restarted passive server may become stuck in initializing state when removing event listeners for dead clients.
*   5647 – Fixed rare situation where cluster does not recover after a specific type of network disruption.

#### Known Issues

*   4984 - Port 9520 is no longer valid.  Actual IP address will show versus the loopback one.

*   5462 - When Master Orch of region 1 is terminated while using TMC for WAN, the region 2 Master Orch status in the replica option is listed as unknown in the Topology configuration.

*   5477 - When user kills Master Orch and Replica Orch, some caches in Region 1 return "OrchestratorAlive" to be "true".

*   5490 - When IE 11 browser, user is unable to view off-line data in TMC.

*   5513 - Stopping of TSA from TMC fails when TSA is started as a service.


### Known Issues in 4.3.0

*   4941 - Resolved issue where Terracotta Server would not start when using IBM JDK 1.7.0 SR7.
*   4984 - Port 9520 is no longer valid.  Actual IP address will show versus the loopback one.
*   5462 - When Master Orch of region 1 is terminated while using TMC for WAN, the region 2 Master Orch status in the replica option is listed as unknown in the Topology configuration.
*   5477 - When user kills Master Orch and Replica Orch, some caches in Region 1 return "OrchestratorAlive" to be "true".
*   5490 - When IE 11 browser, user is unable to view off-line data in TMC.
*   5503 - "Unresponsive script" dialog pops up, when observing the 560 caches listing in the management panel in TMC.
*   5513 - Stopping of TSA from TMC fails when TSA is started as a service.
*   5557 - When large number of clients simultaneously connect with the TSA server it could result in NullPointerException and server gets terminated.
