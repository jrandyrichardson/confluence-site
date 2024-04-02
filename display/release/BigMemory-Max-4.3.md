---
title:  BigMemory Max 4.3 Release Notes and Notifications
lang: en
layout: page
keywords:
space: current
sidebar: lb2_sidebar
permalink: /display/release/BigMemory+Max+4.3.html
summary:
---

BigMemory Max delivers ultrafast access to hundreds of terabytes of in-memory data. BigMemory snaps into enterprise applications to deliver unmatched performance at any scale.

BigMemory Max supports a distributed in-memory data-storage topology, which enables the sharing of data among multiple caches and in-memory data stores in multiple JVMs. It uses a Terracotta Server Array to manage data that is shared by multiple application nodes in a cluster.

The Ehcache 2.x API can be used with BigMemory Max 4.x as a general-purpose cache/in-memory data store or a second-level cache for Hibernate. You can additionally integrate it with third-party products such as ColdFusion, Google App Engine, and Spring.

------

<br>
Document Contents

* TOC
{:toc}

<br>

## Release Details
------------------
BigMemory Max 4.3.10 (October 2021). It includes Ehcache 2.10.10.

Fixes are cumulative from version to version.

<br>

## Deprecation Notices
------------------
February 2020:
* Software AG intends to deprecate and remove from distribution the WAN Replication Service/Module in the next release (4.3.10, late 2021).
* Software AG intends to deprecate the Web Sessions product in the next release (4.3.10, late 2021).

> Deprecation Notice:  As previously announced in February 2020, as of October 2021, the BigMemory WAN Replication module and Web Sessions products have been deprecated and are no longer distributed or updated as part of BigMemory products (any/all versions).

<br>

## Feature Highlights
-------------------
BigMemory Max 4.3.x introduced the following new capabilities:

* Terracotta Management Console (TMC) extended to support WAN Replication Service: The WAN tab enables monitoring of information about the following aspects of the WAN Replication Service:
  *   WAN's topology and configuration information
  *   Performance statistics and details of their deployment, such as the orchestrator topology, configuration, and status of each WAN-enabled cache. 
* Support for Java 8
* Support for RedHat EL7 (server)
* Ability to restrict TMC access to execute adhoc(BigMemory) SQL (BigMemory 4.3.1)
* Support for SUSE Linux Enterprise 12 (BigMemory 4.3.1)
* A simpler version (IP whitelist) of access restrictions has been added (restricting access to a list of provided IP addresses) (BigMemory 4.3.2)
* Failover Tuning – Data consistency for cross-data center clustering (BigMemory 4.3.3)
* Support for Tomcat 8 (BigMemory 4.3.3)
* Quartz no longer supported (BigMemory 4.3.3)
* Added Docker to Terracotta kit for SAG Install (BigMemory 4.3.4)
* Support for Windows Server 2016 (BigMemory 4.3.4)
* Prometheus support for BigMemory Max monitoring/stats (BigMemory 4.3.10)
* As notified in early 2021, WAN modularized into own tar file, removed from BigMemory Max kit as it was previously deprecated (BigMemory 4.3.10)
* As notified in early 2021, WebSessions modularized into own tar file, removed from BigMemory Max kit as it was previously deprecated  (BigMemory 4.3.10)

<br>

# Summary of Changes 4.3.10.x
-----------------------

### 4.3.10.0
* Release Date: 2021/10/15
* Contains all security updates included in BigMemory 4.3.9.4

### 4.3.10.1
* Release Date: 2021/11
* Resolved
  * [TAB-8023] Script usermanagement.sh resolve password encryption is too weak
  * [TAB-7984] update timing to prevent passive crash when clients registering listeners while passive sync is occurring
  * [TAB-8035] Resolve high CPU utilization from "Expiration Threads". CPU utliziation returns to normal after 5-10 minutes.

* Security Updates to Third Party Libraries
  * [TAB-8025] Update Third Party Library Apache Shiro to 1.8.0

### 4.3.10.2
* Release Date: 2022/02
* Resolved
  * [TAB-8081] Active Directory group membership determination can fail
  * [TAB-8083] revert ehcache-ee client version to 2.10
  * [TAB-8031] In Docker image allow start script to be updated to allow higher heap
  * [TAB-8087] Added X-Frame-Options DENY header to TMC
* Security Updates to Third Party Libraries
  * [TAB-8028] Upgrade csrf-guard from 3.1.0 to 4.0.0
  
### 4.3.10.3
* Release Date: 2022/04
* Resolved
  * none  
* Security Updates to Third Party Libraries
  * [TAB-8108] CVE-2020-36518 - Update jackson libraries to 2.13.2
  * [TAB-8096] Update Jetty libraries to 9.4.45.v20220203
    *   update csrfguard to 4.1.3
    *   update logback to 1.2.11
  * [TAB-7894] Prevent vulnerability where XmlFileUserProfileDao allows user to write xml file to filesystem.
  
### 4.3.10.4
* Release Date: 2022/07
* Resolved
  * [TAB-8129] Improve error reporting around invalid LDAP/Active Directory setups; No longer require Admin users to be members of other security groups.
* Security Updates to Third Party Libraries
  * none
  
### 4.3.10.5
* Release Date: 2022/08
* Resolved
  * [TAB-8178] Resolved issue with the URL removal from keychain.
* Security Updates to Third Party Libraries
  * [TAB-8165] Update jackson to 2.13.3
    *   Update commons-cli to 1.5.0
    *   Update jakarta.activation to 2.1.0
    *   Update jakarta.xml.bind to 4.0.0
    *   Update commons-lang3 to 3.12.0
    *   Update shiro to 1.9.1
    *   Update jetty to 9.4.48
    *   Update jersey to 2.36
    *   Update csrfguard to 4.1.4
  
### 4.3.10.6
* Release Date: 2022/10
* Resolved
  * [TAB-8211] fix classloading/classpath issue in server
  * [TAB-8212] fix possible deadlock in caches using writer, expiration, and running at capacity while under high concurrency
* Security Updates to Third Party Libraries
  * none
  
### 4.3.10.7
* Release Date: 2022/10
* Resolved
  * none  
* Security Updates to Third Party Libraries
  * [TAB-8200] Security Update: Reflected Cross-Site Scripting
  * [TAB-8202] Security Update: Improper Error Handling
  * [TAB-8203] Security Update: Banner Grabbing
  * [TAB-8204] Security Update: Server-side request forgery

### 4.3.10.8
* Release Date: 2022/11
* Resolved
  * none  
* Security Updates to Third Party Libraries
  * [TAB-8226] Security Update: Vulnerable 3rd Party Component Jackson Databind used
  * [TAB-8242] Security Update: Vulnerable 3rd Party Component Shiro used

### 4.3.10.9
* Release Date: 2022/12
* Resolved
  * [TAB-8263] TMC shows blank page after installing Terracotta upgrade
  * [TAB-8261] Ascending function not working in terracotta query while fetching data .
* Security Updates to Third Party Libraries
  * none

### 4.3.10.10
* Release Date: 2023/02/17
* Resolved
  * none  
* Security Updates to Third Party Libraries
  * [TAB-8283] Vulnerable 3rd Party Component shiro-core and jackson-databind updated
  * [TAB-8281] Vulnerable 3rd Party Component shiro-core and jackson-databind updated

### 4.3.10.11
* Release Date: 2023/05/12
* Resolved
  * Docker Cleanups + Switch to Alpine
  * Adding permision changes for tmc docker image
* Security Updates to Third Party Libraries
  * [TAB-8330] Vulnerable 3rd party component json-smart updated
  * [TAB-8331] Updated json-path from 2.7.0 to 2.8.0 and added json-smart 2.4.10

### 4.3.10.12
* Release Date: 2023/05/26
* Resolved
  * Disable csrfguard when there is no session
* Security Updates to Third Party Libraries
  * none

### 4.3.10.13
* Release Date: 2023/07/07
* Resolved
  * Update file containing docker image 3rd party components
* Security Updates to Third Party Libraries
  * [TAB-8395] CVE updates of json-smart
  * [TAB-8384] Vulnerable 3rd party component Guava updated
  * [TAB-8364] Vulnerable 3rd party component Eclipse-Jetty updated
  * Multiple 3rd party library updates

### 4.3.10.14
* Release Date: 2023/08/10
* Resolved
  * none
* Security Updates to Third Party Libraries
  * [TAB-8435],[TAB-8436] Vulnerable 3rd party component Shiro updated
  * Other 3rd party library updates
    *   guava
    *   commons-codec
    *   commons-lang3
    *   jersey

### 4.3.10.15
* Release Date: 2023/10/05
* Resolved
  * none
* Security Updates to Third Party Libraries
  * [TAB-8485] Vulnerable 3rd party component Eclipse Jetty updated to 9.4.52.v20230823

### 4.3.10.16
* Release Date: 2023/10/24
* Resolved
  * none
* Security Updates to Third Party Libraries
  * Third-party library upgrades:
    *   jetty to 9.4.53.v20231009
    *   jackson to 2.15.3
    *   guava to 32.1.3-jre
    *   commons-io to 2.14.0
    *   rest-assured to 5.3.2

### 4.3.10.17
* Release Date: 2023/12/18
* Resolved
  * [TAB-8521] Secure Setting on cookies from TMS
  * [TAB-8522] Disable additional set of ciphers in TMS that are now considered weak
  * [TAB-8523] Enforce more strict password policy for strong passwords
  * [TAB-8288] Disallow HTTP v 1.0 protocol to TMS
* Security Updates to Third Party Libraries
  * none

### 4.3.10.18
* Release Date: 2024/02/01
* Resolved
  * none
* Security Updates to Third Party Libraries
  * [TAB-8524] Http Security headers missing
  * [TAB-8537] Vulnerable 3rd party component logback used
  * [TAB-8550] Vulnerable 3rd party component shiro used 
  * Third-party library upgrades:
    *   bytebuddy 1.14.11
    *   byteman 4.0.22
    *   commons-cli 1.6.0
    *   commons-io 2.15.1
    *   commons-lang 3.14.0
    *   commons-logging 1.3.0
    *   groovy 3.0.20
    *   guava 33.0.0-jre
    *   jackson 2.16.1
    *   jaxb-runtime 2.3.9
    *   jersey 2.41
    *   logback 1.2.13
    *   rest-assured 5.4.0
    *   shiro 1.13.0

### 4.3.10.19
* Release Date: 2024/03/08
* Resolved
  * none
* Security Updates to Third Party Libraries
  * [TAB-8671] Vulnerable 3rdparty components found in docker image 
    *   Updated to latest Alpine image containing updates for libssl3, libcrypto3
  * [TAB-8673] Vulnerable 3rd party component json-path used
  * Third-party library upgrades:
    *   json-path 2.9.0

<br>

# Summary of Changes 4.3.9.x
-----------------------
* Release Date: 2021/04/15
* New Features
  * Java 11 officially supported (along with Java 8)
  * Command Central SPM Plugin:  Secured connections (SSL/TLS) now supported.
* Resolved 
  * 7912 - Terracotta Management Console (TMC) Offline Data panel fails to initialize when security enabled and the username contains special characters.
  * 7903 - Terracotta Management Console (TMC) not displaying Caching Clients Information correctly. 
* Security Updates to Third Party Libraries
  * 7857 - Shiro component updated to version 1.7.0.
  * 7913 - Bootstrap updated to version 4.5.2.
  * 7898 - Jetty updated to version 9.4.35.
  * Various other 3rd party library updates
* Notes
  * The upgrade of 3rd party library Shiro creates an issue that will require a configuration change for some users. URLs containing semi-colon are blocked and 400 client error is thrown. To solve this issue, add the following 2 lines if they don't exist already at the very top under the \[main\] section of file ~/.tc/mgmt/shiro.ini
<br>
```
[main]
invalidRequest = org.apache.shiro.web.filter.InvalidRequestFilter
invalidRequest.blockSemicolon = false
```

# Summary of Changes 4.3.8.x
-----------------------
* Release Date: 2019/10/15
* New Features
  * Logging moved from (directly) "log4j" framework to "logback".
* Resolved 
  * 7589 - Remove misleading warning during election
  * 7686 - Resolve issue with remaining lock file preventing start of TMS/TMC
  * 7760 - Optional TC property "http.enable.socket.reclaimer" introduced to enable forced extra attempts to close sockets that have encountered connectivity errors
  * 7762 - Silence unnecessary logging noise
* Notes
  * Users who have previously configured authentication settings for the TMS/TMC may need to make a manual file edits in order to be able to log in after applying fixes. The symptom of this need is a blank browser page or a message from the browser indicating too many redirects, or similar. To fix the problem edit the "shiro.ini" found in the ".tc/mgmt" directory of the user's home folder (the user that the TMS/TMC process runs as). In this text file locate the line (typically near the bottom) that reads "/login.jsp = authc". Immediately above that line, add the three following lines if they are not present:
<br>
```
/401.jsp = anon
/403.jsp = anon
/404 = anon
```

# Summary of Changes 4.3.7.x
-----------------------
* Release Date: 2019/04/15
* New Features
  * Improvements and new options for Terracotta server start/stop commands to facilitate safer automation of operations
* Resolved 
  * 7697 - Fixed issue with fully cleaning up SSE socket connections (from TMC) when connection is parially broken unexpectedly
<br>

# Summary of Changes 4.3.6.x
-----------------------
* Release Date: 2018/10/16
* Resolved 
  * 7683 - Fixed a potential file descriptor leak in the TSA’s management agent that was introduced in version 4.3.6.
  * 7653 - Fixes Socket leak when unexpected requests appear on the tsaPort and groupPort
  * 7666 - Disable HTTP TRACE on all server web interfaces
  * 7626 – Resolved issue where an unhandled java.util.ConcurrentModificationException causes Terracotta Server Array to crash.
  * 7592 – Resolved issue to always consider timeout settings and propagate them explicitly to the internal HttpClient.
  * 7586 - The service wrapper has been modified to only ever automatically restart the Terracotta Server when it starts up as a passive and determines it has a dirty database. Please refer to server/wrapper/README.txt, Sect. 6 BASIS FOR DEFAULT CONFIGURATION for more details.
  * 7563 – Expanded search monitoring to include oversized query results.  Added system property (tc.searchmonitor.oversizedQueryLogging=N) which can be used to set a minimum at which point there will be a warning logged if a query result set on a server exceeds the amount.
* Security Updates to Third Party Libraries
  * 7580 – Upgraded to netty 3.9.8 to resolve security vulnerability CVE-2015-2156
  * 7388 – Update httpclient libraries to resolve security vulnerability CVE-2015-5262
  * 7429 – Addressed security vulnerabilities CVE-2017-7525, CVE-2014-0114, and CVE-2017-9735
  * 7518 – Resolved security vulnerability CVE-2015-2080
<br>

# Summary of Changes 4.3.5.x
-----------------------
* Release Date: 2017/10/16
* Resolved 
  * 7214 – Fixed memory leak caused by dynamically creating and removing caches
  * 7450 - Fix for case where rapid intermixing of client rejoins and beginning paginated searches could crash the server.
  * 7462 – Fixed issue where Command Central reports that Terracotta Server Array is "Unresponsive" when <failover-priority> configuration element is present in tc-config.xml. This issue is due to a XML validation-error, where Platform Manager is using an out-dated XML-schema. 
  * 7480 – Resolved hybrid storage mode race condition that may occur between appender and reader threads for doing fsync when there are read and writes in parallel; which then may lead to server crash.
  * 7483 – Resolved ArrayIndexOutOfBoundException error after TC node startup.
  * 7507 – Resolved issue where Terracotta Active crashes when synching search index data to Passive with “[java.io](http://java.io).FileNotFoundException” error.  This occurs when paginated searches are in-progress.
  * 7396/7423 – Resolved null pointer exception issue that occurs when the server tries to process an already applied replace operation that has been re-sent by a client on a server failover or a serverstart.
  * 7480 – Resolved hybrid storage mode race condition that may occur between appender and reader threads for doing fsync when there are read and writes in parallel; which then may lead to server crash.
  * 7483 – Resolved ArrayIndexOutOfBoundException error after TC node startup.
  * 7507 – Resolved issue where Terracotta Active crashes when synching search index data to Passive with “[java.io](http://java.io).FileNotFoundException” error.  This occurs when paginated searches are in-progress.
* Security Updates to Third Party Libraries
  * 7517 – Upgraded Jackson-Databind to version 2.9.5 to address security vulnerabilities
<br>

# Summary of Changes 4.3.4.x
-----------------------
* Release Date: 2017/10/16
* Resolved 
*   7423 – Resolved null pointer exception issue that occurs when the server tries to process an already applied replace operation that has been re-sent by a client on a server failover or a server restart. 
*   7450 - Fix for case where rapid intermixing of client rejoins and beginning paginated searches could crash the server.
*   7394 - Fixed terracotta server startup issue encountered with recent IBM Java 1.8 update(Refresh 5 or later).
*   7282 – Fixed minor issue with non-numeric strings being handled by Command Central plugin
*   7348 - Fixed potential concurrency problem with search results when multiple searches are performed simultaneously on two Caches within the same CacheManager
*   7359 - Changed default settings of Tanuki wrapper to avoid possible restart problems after a fail-over
*   7287 – Resolved bug to allow clients to rejoin a cluster when both Active-Active and Security are configured. 
*   7213 – Fixed server mistakenly kicking out clients with "Error hydrating message of type REQUEST\_MANAGED\_OBJECT\_MESSAGE (12) java.lang.UnsupportedOperationException: Inserts out of order"
*   7244 - Fixed the issue of an exception being thrown while executing a query with key as search attribute. This issue was seen only on installations with WAN replication enabled.
<br>

# Summary of Changes 4.3.3.x
-----------------------
* Release Date: 2016/10/14
* Resolved 
  * 7022 – Fixed TMC showing duplicates of Operator Events under some circumstances. E.g. Having multiple concurrent browser sessions.
  * 7091 - Fixed bug causing TMC on same localhost is slow with Connection refused  
  * 6764 – Resolved issue where due to network issues, client connections were not cleared after clients were disconnected thereby causing the license policy to reject connections for new clients.
  * 6785 – Resolved issue where excessive number of threads were created by Jersey Client causing issues with memory resources.
  * 6996 - Documentation update to show BigMemory 4.1 and later versions now support the FRS "SizeBasedCompactionPolicy"
  *  7019 - Fixed security-keychain bug that would sometimes not allow IS to start when connected to Terracotta 
  * 7034 –  SSL documenation updated
    *   Added a new section "Scope of the SSL documentation"
    *   Added hints about -trustcacerts and the KeyStore Explorer GUI.
<br>

# Summary of Changes 4.3.2.x
-----------------------
* Release Date: 2016/04/15
* Resolved 
  * 6785 – Resolved issue where excessive number of threads were created by Jersey Client causing issues with memory resources.
  * 6764 – Resolved issue where due to network issues, client connections were not cleared after clients were disconnected thereby causing the license policy to reject connections for new clients. 
  * 6636 - Resolved memory leak issue caused by Jersey 2.6 client listeners
  * 6542 – Resolved error when configuring Active Direction in TMC
  * 6569 – Resolved startup error when terracotta is launched from wrapper script or Command Central.
  * 6576 – Fixed issue handling special characters in connection URLs in keychains
  * 6584 – Corrected TransactionSequencer shutdown due to connection closure
<br>

# Summary of Changes 4.3.1.x
-----------------------
* Resolved 
  * 6576 – Fixed issue handling special characters in connection URLs in keychains
  * 6636 - Resolved memory leak issue caused by Jersey 2.6 client listeners
  * 3720 – Resolved exception error in TMC when user group is not found on LDAP.
  * 4687 - The BeanShell feature, previously used for troubleshooting internal server issues, has been removed from the Terracotta Server a it was a security vulnerability.
  * 5513 - Stopping terracotta server from TMC no longer fails if server is started as service.
  * 6169 - Resolved issue where the debug-tool is not honoring the -z flag on Windows and generating thread dump on console
  * 6174 - Resolved bug with CacheEventListener.notifyElementEvicted returning byte\[\] instead of actual Element object when using copy on read strategy
  * 6184 - TMC reports cluster status as UNREACHABLE if any of of cluster nodes is not running.This happens when TMC is running on windows machine with stealth mode firewall option enabled.
  * 6293 - Apache Shiro, security framework used in terracotta, is upgraded to 1.2.4
  * 6347 – Added warning message in log when TC Server off heap is configured to less than 2GB
  * 6357 - Resolved issue where TMC crates excessive "see-flush–timer" threads.
  * 5036 – Resolved visual defect to align data points on graph in TMC
  * 5249 – Fixed TMC log's pause button to correctly pause if there is a pending request in the background
  * 5272 – Allows symmetrical, bidirectional cache replication
  * 5462 – When the WAN Master Orchestrator of Region 1 is terminated,  and using TMC, the Region 2 Master Orchestrator status is listed as unknown by the Replica option in the Topology configuration
  * 5490 - User is now able to view off-line data in the TMC using IE11 browser
  * 5531 – Increased TMS scalability (support larger number of clients) via JMX usage optimization
  * 5548 – Corrected memory leak within TMC
  * 5599 – Default off heap size set to 2GB along with warning message when size not specified 
  * 5602 -  Resolved TMC issue to show number of filtered clients when filtering remote addresses of connected clients in a large cluster
  * 5647 – Resolved issue where Terracotta cluster could not recover after a specific type of network interruption
  * 5757 – Corrected issue for properly generating TimeoutBehavior element
  * 6027 – Resolved deadlock possibility for cases with 2 threads and 2 locks when shutting down clustered cache manager
  * 6134 – Fixed issue with Quartz MBeans not being exposed to the JMX server
<br>

# Summary of Changes 4.3.0.x
-----------------------
* Resolved
  * 5503 - "Unresponsive script" dialog no longer appears, when connected with 560 clients.
  * 5557 – Resolved issue that resulted in NullPointerException and server was terminated when large number of clients simultaneously connect with the TSA server.
  * 5598 – Resolved issue where a restarted passive server may become stuck in initializing state when removing event listeners for dead clients.
  * 5647 – Fixed rare situation where cluster does not recover after a specific type of network disruption.
<br>
<br>

# Notes
-------
* Terracotta BigMemory 4.x and Terracotta 10.x clients may be used simultaneously in the same application by ensuring ClassLoader isolation when initializing at least one of the clients.

<br>
# Important Upgrade Information
-------

The following information is contained in the readme.txt file included with each fix release and should be reviewed prior to applying any fix.
<br>
```
8.0 Installation

8.1 Shut down the server array. A safe shutdown procedure is as follows.

  a. Shut down the mirror servers using the stop-tc-server script. 
     If you are using a wrapper solution to manage the mirror servers, execute 
     the wrapper shut down command to shut down the mirror servers instead of 
     using the stop-tc-server script.

  b. Shut down the clients. A Terracotta client will shut down when you shut 
     down your application.

  c. Shut down the active servers using the stop-tc-server script.
     If you are using a wrapper solution to manage the servers, execute the 
     wrapper shut down command to shut down the servers instead of using the 
     stop-tc-server script.

8.2 This fix overwrites server scripts,wrapper configuration files and default
    tc-config.xml. If you have any custom settings defined on those files
    (ex:MaxDirectMemorySize), then you need to restore those settings back after
    applying the fix.

8.3 Install the fix using the Software AG Update Manager.
    For instructions, see Using the Software AG Update Manager located either in 
    the _documentation directory or on the documentation Web site at 
    http://documentation.softwareag.com.

8.4 The upgrade of the 3rd party library Shiro may create an issue for some users 
    that will require a manual configuration change to the "shiro.ini" found in 
    the ".tc/mgmt" directory of the user's home folder (the user that the TMS/TMC
    process runs as ~/.tc/mgmt/shiro.ini). Edit this file and restart the 
    TMS/TMC.
     
   a. Blank browser page or a message from the browser indicating too many 
      redirects, or similar.
      In [urls] section of file ~/.tc/mgmt/shiro.ini, locate the line in the 
      that reads "/login.jsp = authc". Immediately above that line add the three 
      following lines:

      /401.jsp = anon
      /403.jsp = anon
      /404.html = anon
      
      In the [main] section of file ~/.tc/mgmt/shiro.ini, add the following 
      line:
      
      [main]
      shiro.filterOncePerRequest=true
   
   b. URLs containing semi-colon are blocked and 400 client error is thrown. 
      In the [main] section of file ~/.tc/mgmt/shiro.ini, add the following two 
      lines to the top of the section:

      [main]
      invalidRequest = org.apache.shiro.web.filter.InvalidRequestFilter
      invalidRequest.blockSemicolon = false

9.0 Uninstallation

9.1 Shut down the server array. A safe shutdown procedure is as follows.

   a. Shut down the mirror servers using the stop-tc-server script. 
      If you are using a wrapper solution to manage the mirror servers, execute
      the wrapper shut down command to shut down the mirror servers instead of 
      using the stop-tc-server script.

   b. Shut down the clients. A Terracotta client will shut down when you shut 
      down your application.

   c. Shut down the active servers using the stop-tc-server script.
      If you are using a wrapper solution to manage the servers, execute the 
      wrapper shut down command to shut down the servers instead of using the 
      stop-tc-server script.

9.2 Uninstall the fix using the Software AG Update Manager.
    For instructions, see Using the Software AG Update Manager.

NOTE: This uninstall procedure can only be used to uninstall the most recently 
      installed fix. This action will revert your installation to the previously 
      installed fix. You cannot apply this uninstall procedure to the previously 
      installed fix.
```
	  
<br>
