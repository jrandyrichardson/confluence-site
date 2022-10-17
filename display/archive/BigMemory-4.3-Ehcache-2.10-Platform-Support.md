---
title:  BigMemory 4.3, Ehcache 2.10 Platform Support  
lang: en
layout: page
keywords:
space: archive
sidebar: lb2_sidebar
permalink: /display/release/BigMemory+4.3%2C+Ehcache+2.10+Platform+Support.html
summary:
---

* TOC
{:toc}

Platform Support
----------------

The platforms listed on this page are currently certified for use with commercial Terracotta product editions. As a 100% Java solution, Terracotta should run without issues on Java platforms for which it is not certified as well. If you have any questions about a certified or non-certified platform, contact us in one of the following ways:

*   Send email to [info@terracotta.org](mailto:info@terracotta.org)
*   Post a question on our community forums

Terracotta is comprised of two different components: the client that integrates with your application, and the server (the server array) that typically runs on a set of separate machines in production.  The client is designed to run on many platform/JDK/container combinations. The server runs directly as a Java process (without a container).

If you are using our BigMemory Cross Language Clients, please see [BigMemory .NET Client](http://terracotta-org/documentation/4.1/cross-language/dotnet/dotnet-install) and [BigMemory C++ Client](Library+to+Server+Compatibility+Matrix) for platform requirements.

**NOTE:** Java 8 is required for BigMemory 4.3.5 and later versions.

Client JDKs
-----------

| JDK Version |
| --- |
| Oracle 1.8.0\_162 |
| Oracle 1.7.0\_80 (up to 4.3.5.1) |
| Sun Hotspot 1.6.0\_45 (up to 4.3.5) |
| OpenJDK 1.8.0\_121 |
| ZULU JDK 1.8.0\_172 |
| Oracle BEA JRockit 1.6 (client only) |
| IBM JDK 1.6 (client only) |

Client Containers
-----------------

| Container Versions |
| --- |
| Apache Tomcat 8.0.35 (4.3.3+) |
| Apache Tomcat 7.0.39 |
| Apache Tomcat 6.0.36 (up to 4.3.2) |
| IBM WebSphere 8.5.5.1 (4.3.6 +) |
| IBM WebSphere 8.5.0.1 (up to 4.3.5) |
| IBM WebSphere 8.0.0.5 (up to 4.3.5) |
| IBM WebSphere 7.0.0.9 (up to 4.3.5) |
| JBoss AS 7.2.0  (4.3.6 +) |
| JBoss AS 7.1.1 (up to 4.3.5) |
| JBoss-EAP 6.4.0 (4.3.6 +) |
| JBoss EAP 6.1.0 (up to 4.3.5) |
| JBoss AS 6.1.0 (up to 4.3.2) |
| Jetty 8.1.10 (up to 4.3.2) |
| Jetty 9.0.2 |
| Oracle BEA WebLogic 12.2.1.3 (4.3.6 +) |
| Oracle BEA WebLogic 12.1.1 (up to 4.3.5) |
| Oracle BEA Weblogic 10.3.6 (up to 4.3.5) |
| Glassfish V3.1.2.2  (up to 4.3.5) |

Server Information
------------------

The Terracotta server is a process that runs directly in a JVM.  
It has been validated on the following OSes with  JDK 1.8.0\_162, OpenJDK 1.8.0\_121 and ZULU JDK 1.8.0\_172

*   RedHat EL7 7.0 (up to 4.3.5) and RedHat 7.1, 7.2, 7.3, 7.4
*   RedHat EL6 (6.4, 6.5, 6.6, 6.8)
*   SUSE 11 (up to 4.3.4)
*   SUSE ES12
*   CentOS 7 (7.0, 7.2, 7.3, 7.4)
*   CentOS 6 (6.4, 6.5)
*   Ubuntu 14.04
*   Windows Server 2019
*   Windows Server 2016
*   Windows Server 2012
*   Windows 10
*   Windows 2008 (up to 4.3.4)

Sever JVM heap-space requirements vary by workload. While some small workloads can be handled in 2GB of heap, most workloads, especially with higher transaction rates, or usage of search features will require at minimum 4GB of heap space.

The following are supported when used with webMethods 9.8+

*   IBM System Z (Red Hat 6.x)  (with IBM J9 VM 1.8.0) and (Red Hat 7.x)
*   IBM System Z (SUSE Linux 11 SP X)  (with IBM J9 VM 1.8.0)
*   Amazon EC2 (RHEL 6) - (up to 4.3.2 only))
*   Solaris Sparc 10 (up to 4.3.2 only) and  Solaris Sparc  (64) 11
*   Solaris 10 (x86) (with Java version: Oracle 1.8.0\_66) - up to 4.3.2 only
*   Solaris 11(x86)  
    
*   HP-UX 11.31 Itanium   (with HP Java 1.8.0.02)
*   AIX Power 6.1 (up to 4.3.2 only) , AIX 7.1 with IBM Java 1.7.0 and 1.8.0 and AIX 7.2 with IBM Java 1.8.0 SR5 (SJP\_1.8.0.0.96)

For other JVM/platform combinations not listed above, please contact [info@terracotta.org](mailto:info@terracotta.org) to confirm status.

Sever JVM heap-space requirements vary by workload. While some small workloads can be handled in 2GB of heap, most workloads, especially with higher transaction rates, or usage of search features will require at minimum 4GB of heap space.

Browsers (TMC)
--------------

*   Firefox 60
*   Chrome 67.0.3396.99  
    
*   IE 9.0.50, 10, 11
*   MS Edge 38

Library to Server Compatibility Matrix
--------------------------------------

[Library to Server Compatibility Matrix](Library+to+Server+Compatibility+Matrix)

  


