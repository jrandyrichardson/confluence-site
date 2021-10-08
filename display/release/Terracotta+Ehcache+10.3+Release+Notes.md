---
title:  Terracotta Ehcache 10.3 Release Notes  
---

Terracotta Ehcache is a standards-based cache that boosts performance, offloads your database, and simplifies scalability. It's the most widely-used Java-based caching platform in the world for its ability to integrate with other popular libraries and frameworks like Hibernate, Spring, etc. Terracotta Ehcache scales from in-process caching, all the way to mixed in-process/out-of-process deployments with terabyte-sized caches. It strengthens distributed caching capabilities via a new generation of Terracotta server with support for high-availability and improved performance.

Some key features include:

*   An API that leverages Java generics and simplifies Cache interactions
*   Full compatibility with javax.cache API (JSR-107)
*   Offheap storage capabilities, including offheap-only caches
*   Out of the box Spring Caching and Hibernate integration thanks to the javax.cache support, and many more ...

Ehcache also is alive as an open source project. Outside of this distribution, Ehcache builds are available on the project's GitHub release page at htt[ps://github.com/ehcache/ehcache3/releases](ps://github.com/ehcache/ehcache3/releases).

/\*<!\[CDATA\[\*/ div.rbtoc1633463968013 {padding: 0px;} div.rbtoc1633463968013 ul {list-style: disc;margin-left: 0px;} div.rbtoc1633463968013 li {margin-left: 0px;padding-left: 0px;} /\*\]\]>\*/

*   [New Features](#TerracottaEhcache10.3ReleaseNotes-NewFeatures)
*   [Summary of Changes 10.3.0.3](#TerracottaEhcache10.3ReleaseNotes-SummaryofChanges10.3.0.3)
    *   [Resolved](#TerracottaEhcache10.3ReleaseNotes-Resolved)
*   [Summary of Changes 10.3.0.2](#TerracottaEhcache10.3ReleaseNotes-SummaryofChanges10.3.0.2)
    *   [Resolved](#TerracottaEhcache10.3ReleaseNotes-Resolved.1)
*   [Summary of Changes in 10.3.0.1](#TerracottaEhcache10.3ReleaseNotes-SummaryofChangesin10.3.0.1)
    *   [Resolved](#TerracottaEhcache10.3ReleaseNotes-Resolved.2)
    *   [Known Issues](#TerracottaEhcache10.3ReleaseNotes-KnownIssues)
*   [Notes:](#TerracottaEhcache10.3ReleaseNotes-Notes:)

New Features
------------

Terracotta DB 10.3 release introduces key enterprise readiness features and analytical capabilities in Terracotta DB. With this release, Terracotta DB took a big leap forward to support multi cloud deployments, security, and operational usability. Some of the notable features of Terracotta DB 10.3 include:

*   Azure certification as a supported platform for Terracotta DB deployments.
*   Terracotta DB now available on docker store.
*   Security enhancements including Authentication, Authorization and Auditing support for Terracotta DB.
*   Write-behind support for clustered Ehcache.
*   Hybrid storage support for Terracotta DB.
*   Configuration helpers for simple to use XML based configuration import and export.
*   Numerous operational usability enhancements including Latency metering refactoring and role based access in Terracotta Management Console.

Summary of Changes 10.3.0.3
---------------------------

### Resolved

*   4149 – Implemented a more efficient backoff waiting algorithm for IO during secure handshake in order to remove a performance degradation when secure network communications are enabled.

Summary of Changes 10.3.0.2
---------------------------

### Resolved

*   4098 – The external voter now tracks server partition events and takes care not to vote for multiple servers in the same partition event.
*   3989 – Resolved client not reconnecting to newly promoted active after failover. This happened when cluster was configured for consistency mode with external voters.

Summary of Changes in 10.3.0.1
------------------------------

### Resolved

*   *   3591 - Fixed the display of server status in SPM plugin from ‘UNKNOWN’ to ‘NOT READY’ when server is syncing, stuck or suspended.
    *   3732 - Added enhancement to emit configuration to log after cluster tool reconfiguration
    *   3805 - Resolved issue to make cluster-tool.bat, bcrypt.bat or start-tc-voter.bat executable on windows
    *   3829 - Resolved issue when secured server would be allowed to start in case keys in certificates are not generated with RSA algorithm.  
        
    *   3841 - Added warning for users for mismatched port/hosts
    *   3873 - Enhanced Cluster tool server-level status command to provide more details during failures
    *   3875 - TMC now shows security status for connection between TMS and the cluster  
        
    *   3879 - TMS Server at the startup should migrate the tmc.properties from older version by introducing the newly added properties in 10.3 with default values and update the renamed properties
    *   3882 - TMC resource panel now displays server status
    *   1699 - Ehcache EE now automatically registers its management registry if absent  
          
        
*   ### Known Issues
    
    *   None

Notes:
------

*   Terracotta BigMemory 4.x and Terracotta DB 10.x clients cannot be used simultaneously in the same application without using ClassLoader separation when initializing at least one of the clients.
*   Beginning with 10.3, users should move to the new 10.3 security properties (tms.security.root.directory, tms.security.https.enabled and tms.security.root.directory.connection.default).

Document generated by Confluence on Oct 05, 2021 15:59

[Atlassian](http://www.atlassian.com/)
