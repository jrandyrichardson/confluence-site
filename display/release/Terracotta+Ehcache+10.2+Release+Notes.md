---
title:  Terracotta Ehcache 10.2 Release Notes  
---

Terracotta Ehcache is a standards-based cache that boosts performance, offloads your database, and simplifies scalability. It's the most widely-used Java-based cache because it's robust, proven, full-featured, and integrates with other popular libraries and frameworks. Terracotta Ehcache scales from in-process caching, all the way to mixed in-process/out-of-process deployments with terabyte-sized caches. Terracotta Ehcache strengthens the distributed caching capabilities via a new generation of Terracotta server with support for high-availability and improved performance. Features include: An API that leverages Java generics and simplifies Cache interactions, Full compatibility with javax.cache API (JSR-107), Offheap storage capabilities, including offheap-only caches, Out of the box Spring Caching and Hibernate integration thanks to the javax.cache support, and many more ...

Ehcache also is alive as an open source project. Outside of this distribution, Ehcache builds are available on the project's GitHub release page at htt[ps://github.com/ehcache/ehcache3/releases](ps://github.com/ehcache/ehcache3/releases).

/\*<!\[CDATA\[\*/ div.rbtoc1633463967993 {padding: 0px;} div.rbtoc1633463967993 ul {list-style: disc;margin-left: 0px;} div.rbtoc1633463967993 li {margin-left: 0px;padding-left: 0px;} /\*\]\]>\*/

*   [New Features](#TerracottaEhcache10.2ReleaseNotes-NewFeatures)
*   [Summary of Changes 10.2.0.4](#TerracottaEhcache10.2ReleaseNotes-SummaryofChanges10.2.0.4)
    *   [Resolved](#TerracottaEhcache10.2ReleaseNotes-Resolved)
    *   [Known Issues](#TerracottaEhcache10.2ReleaseNotes-KnownIssues)
*   [Summary of Changes 10.2.0.3](#TerracottaEhcache10.2ReleaseNotes-SummaryofChanges10.2.0.3)
    *   [Resolved](#TerracottaEhcache10.2ReleaseNotes-Resolved.1)
    *   [Known Issues](#TerracottaEhcache10.2ReleaseNotes-KnownIssues.1)
*   [Summary of Changes 10.2.0.2](#TerracottaEhcache10.2ReleaseNotes-SummaryofChanges10.2.0.2)
    *   [Resolved](#TerracottaEhcache10.2ReleaseNotes-Resolved.2)
    *   [Known Issues](#TerracottaEhcache10.2ReleaseNotes-KnownIssues.2)
*   [Summary of Changes in 10.2.0.1](#TerracottaEhcache10.2ReleaseNotes-SummaryofChangesin10.2.0.1)
    *   [Resolved](#TerracottaEhcache10.2ReleaseNotes-Resolved.3)
    *   [Known Issues](#TerracottaEhcache10.2ReleaseNotes-KnownIssues.3)
*   [Notes:](#TerracottaEhcache10.2ReleaseNotes-Notes:)

New Features
------------

*   *   AWS as a supported platform for Terracotta DB
    *   Terracotta DB now supports docker-based container orchestration using Kubernetes
    *   Advanced support for resilient failover through improved "Failover-tuning" option
    *   Resiliency support for improved re-connection for Ehcache clients
    *   Security enhancements including SSL support for Encryption and Authentication
    *   Numerous operational usability enhancements including Latency statistics and Query statistics monitoring

Summary of Changes 10.2.0.4
---------------------------

### Resolved[](https://itrac.eur.ad.sag/browse/TDB-3891)

*   3891 – 10.2 client is now able to connect to 10.3 server
*   3834 – Enabled voter to be able to connect to secure clusters

### Known Issues

*   3119 - Cluster tool fails to connect to server when the bind address is different from host

Summary of Changes 10.2.0.3
---------------------------

### Resolved

*   3290 – Resolved issue where TMC may incorrectly display ACTIVE state for a Terracotta DB server which is shutdown.

### Known Issues

*   3119 - Cluster tool fails to connect to server when the bind address is different from host

Summary of Changes 10.2.0.2
---------------------------

### Resolved

*   3066 - Resolved hybrid storage mode race condition that may occur between appender and reader threads for doing fsync when there are read and writes in parallel; which then may lead to server crash.
*   3152 - The security documentation updated with information on certificate rotation

### Known Issues

*   3119 - Cluster tool fails to connect to server when the bind address is different from host

Summary of Changes in 10.2.0.1
------------------------------

*   ### Resolved
    
    *   2966 - Cluster tool "status" command shows inconsistent stripe contents
        
    *   2801 - "common name" in the server’s TLS/SSL certificate is not validated properly
        
    *   2450 - Two servers in a stripe can be mistakenly displayed as ACTIVE in TMC
        
    *   2993 - Improve impact of thread interrupt during reconnection
        
    *   2969 - ipwhitelist-reload returns success even if the command fails
        
    *   3022 - Reconnect attempts should use a distinct timeout
        
    *   3014 - fixed multiple cases where reconnect can fail
        
*   ### Known Issues
    
    *   None

Notes:
------

*   Terracotta BigMemory 4.x and Terracotta DB 10.x clients cannot be used simultaneously in the same application without using ClassLoader separation when initializing at least one of the clients.

Document generated by Confluence on Oct 05, 2021 15:59

[Atlassian](http://www.atlassian.com/)
