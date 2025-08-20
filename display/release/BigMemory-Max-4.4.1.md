---
title:  BigMemory Max 4.4.1 Release Notes and Notifications
lang: en
layout: page
keywords:
space: current
sidebar: lb2_sidebar
permalink: /display/release/BigMemory+Max+4.4.1.html
summary:
---

BigMemory Max delivers ultrafast access to hundreds of terabytes of in-memory data. BigMemory snaps into enterprise applications to deliver unmatched performance at any scale.

BigMemory Max supports a distributed in-memory data-storage topology, which enables the sharing of data among multiple caches and in-memory data stores in multiple JVMs. It uses a Terracotta Server Array to manage data that is shared by multiple application nodes in a cluster.

The Ehcache 2.11.1.x API can be used with BigMemory Max 4.4.1.x as a general-purpose cache/in-memory data store or a second-level cache for Hibernate. You can additionally integrate it with third-party products such as ColdFusion, Google App Engine, and Spring.

------

<br>

Document Contents

* TOC
{:toc}

<br>

## Current Release
------------------
BigMemory Max 4.4.1 (September 2024) is the latest release. It includes Ehcache 2.11.1.

Fixes are cumulative from version to version.

> Deprecation Notice:  As previously announced in February 2020, as of October 2021, the BigMemory WAN Replication module and Web Sessions products have been deprecated and are no longer distributed or updated as part of BigMemory products (any/all versions).

<br>

## Feature Highlights
-------------------
BigMemory Max 4.4.1 introduced the following new capabilities:

* Rebranding and copyright for IBM
* Support for Java 17
* Various bug fixes and security fixes
* Contains all features and functionality included in [BigMemory Max 4.4.x](https://confluence.terracotta.org/display/release/BigMemory+Max+4.4)

<br>

# Summary of Changes 4.4.1
-----------------------
### 4.4.1.1
* Release Date: 2024/09/13
* Resolved
  * none  
* Security Updates to Third Party Libraries
  * [TAB-8200] Reflected Cross-Site Scripting
  * [TAB-8202] Improper Error Handling
  * [TAB-8203] Banner Grabbing
  * [TAB-8204] Server-side request forgery
  * [TAB-8241] Vulnerable 3rd Party Component Shiro used
  * [TAB-8226] Vulnerable 3rd Party Component Jackson Databind used


### 4.4.1.2
* Release Date: 2024/11/06
* Resolved
  * none  
* Security Updates to Third Party Libraries
  * [TAB-9570] Vulnerable 3rd Party Component org.eclipse.jetty_jetty-io used


### 4.4.1.3
* Release Date: 2024/12
* Resolved
  * [TAB-9603] Update tanuki license file to IBM  
* Security Updates to Third Party Libraries
  * none


### 4.4.1.4
* Release Date: 2025/06/20
* Resolved
  * [TAB-9653] Disable the secure flag on cookies by default
  * [TAB-9654] Mask sensitive data in log files
  * [TAB-9655] Mask sensitive query parameters in logged URIs
* Security Updates to Third Party Libraries
  * Third-party library upgrades
    * logback-classic to 1.5.16
    * logback-core to 1.5.16
    * jackson-annotations to 2.19.0
    * jackson-core to 2.19.0
    * jackson-databind to 2.19.0
    * gson to 2.11.0
    * guava to 33.4.8-jre
    * commons-beanutils to 1.11.0
    * commons-cli to 1.9.0
    * commons-codec to 1.18.0
    * commons-io to 2.19.0
    * commons-logging to 1.3.5
    * commons-collections4 to 4.5.0
    * commons-lang3 to 3.17.0
    * jetty to 12.0.21
    * slf4j-api to 2.0.17
    * hk2 to 3.0.6
    * jaxb to 4.0.5
    * jersey to 3.1.10
    * csrfguard to 4.4.0-jakarta

<br>

# Notes
-------
* Terracotta BigMemory 4.4.1.x and Terracotta 11.1.x clients may be used simultaneously in the same application by ensuring ClassLoader isolation when initializing at least one of the clients.
<br>


# Important Upgrade Information
-------
The following information is contained in the readme.txt file included with each fix release and should be reviewed prior to applying any fix.
<br>
```
8.0 Installation

8.1 Shut down the server array. A safe shutdown procedure is as follows.

    a. Shut down the mirror servers using the stop-tc-server script. 
       If you are using a wrapper solution to manage the mirror servers, execute the wrapper shut
       down command to shut down the mirror servers instead of using the stop-tc-server script.

    b. Shut down the clients. A terracotta client will shut down when you shut down your application.

    c. Shut down the active servers using the stop-tc-server script.
       If you are using a wrapper solution to manage the servers, execute the wrapper shut down
       command to shut down the servers instead of using the stop-tc-server script.

8.2 This fix overwrites server scripts,wrapper configuration files and default tc-config.xml. If
    you have any custom settings defined on those files (ex:MaxDirectMemorySize), then you need to
    restore those settings back after applying the fix.

8.3 Install using Update Manager. For instructions, see the documentation at
    https://docs.webmethods.io/.

8.4 The upgrade of the 3rd party library Shiro may create an issue for some users that will require
    a manual configuration change to the "shiro.ini" found in the ".tc/mgmt" directory of the
    user's home folder (the user that the TMS/TMC process runs as ~/.tc/mgmt/shiro.ini). Edit this
    file and restart the TMS/TMC.
     
    a. Blank browser page or a message from the browser indicating too many redirects, or similar.
       In [urls] section of file ~/.tc/mgmt/shiro.ini, locate the line in the that reads
       "/login.jsp = authc". Immediately above that line add the three following lines:

       /401.jsp = anon
       /403.jsp = anon
       /404.html = anon
      
       In the [main] section of file ~/.tc/mgmt/shiro.ini, add the following line:
      
       [main]
       shiro.filterOncePerRequest=true
   
    b. URLs containing semi-colon are blocked and 400 client error is thrown. 
       In the [main] section of file ~/.tc/mgmt/shiro.ini, add the following two lines to the top
       of the section:

       [main]
       invalidRequest = org.apache.shiro.web.filter.InvalidRequestFilter
       invalidRequest.blockSemicolon = false

    c. Previously, secure cookies in TMS were enabled by default, working only with TLS-secured 
       connections or localhost requests. Remote HTTP access required adding the following line to 
       the ~/.tc/mgmt/shiro.ini file:
       
       [main]
       securityManager.sessionManager.sessionIdCookie.secure = false
       
       The default value for this setting is now set to false. A restart of the TMS for changes
       to take effect.

8.5 The upgrade of the 3rd party library Jetty to v12+ will result in the following configuration changes:

    To allow an SSL connection from the managed agent, the SSL connector must be configured. If the TMS is deployed
    with the provided Jetty web server, add the following to /tools/management-console/etc/start.d/ssl.ini
    (in the BigMemory kit) as shown:

       jetty.sslContext.keyStorePath=etc/dev-keystore.jks
       jetty.sslContext.trustStorePath=etc/dev-keystore.jks
       jetty.sslContext.keyStorePassword=terracotta
       jetty.sslContext.trustStorePassword=terracotta
       jetty.sslContext.keyManagerPassword=terracotta

9.0 Uninstallation

9.1 Shut down the server array. A safe shutdown procedure is as follows.

    a. Shut down the mirror servers using the stop-tc-server script. 
       If you are using a wrapper solution to manage the mirror servers, execute the wrapper shut
       down command to shut down the mirror servers instead of using the stop-tc-server script.

    b. Shut down the clients. A Terracotta client will shut down when you shut down your application.

    c. Shut down the active servers using the stop-tc-server script.
       If you are using a wrapper solution to manage the servers, execute the wrapper shut down
       command to shut down the servers instead of using the stop-tc-server script.

9.2 Uninstall using Update Manager. For instructions, see the documentation at
    https://docs.webmethods.io/.
```
	  
<br>
