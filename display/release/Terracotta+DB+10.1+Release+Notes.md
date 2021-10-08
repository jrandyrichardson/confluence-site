Product Information : Terracotta DB 10.1 Release Notes  

1.  [Product Information](index.html)
2.  [Home](Home.html)

Product Information : Terracotta DB 10.1 Release Notes
======================================================

Created by Subhashni Anuradha, last modified on Oct 31, 2017

Terracotta DB is a distributed in-memory data management solution for both operational and analytical workloads.  Terracotta DB has powerful query and computation capabilities, leveraging native JDK features such as Java Streams, collections, and functions. It supports the following sub-systems:

*   A storage sub-system fronted by TCStore API
    
*   A caching sub-system fronted by the next generation Ehcache API which includes and extends JSR 107
    

Both sub-systems are backed by the Terracotta Server, which provides a common platform for distributed in-memory data storage with scale-out, scale-up and high availability features.

/\*<!\[CDATA\[\*/ div.rbtoc1633463967916 {padding: 0px;} div.rbtoc1633463967916 ul {list-style: disc;margin-left: 0px;} div.rbtoc1633463967916 li {margin-left: 0px;padding-left: 0px;} /\*\]\]>\*/

*   [Feature Highlights](#TerracottaDB10.1ReleaseNotes-FeatureHighlights)
*   [Summary of Changes 10.1.0.2](#TerracottaDB10.1ReleaseNotes-SummaryofChanges10.1.0.2)
    *   [Resolved](#TerracottaDB10.1ReleaseNotes-Resolved)
    *   [Known Issues](#TerracottaDB10.1ReleaseNotes-KnownIssues)
*   [Summary of Changes 10.1.0.1](#TerracottaDB10.1ReleaseNotes-SummaryofChanges10.1.0.1)
    *   [Resolved](#TerracottaDB10.1ReleaseNotes-Resolved.1)
    *   [Known Issues](#TerracottaDB10.1ReleaseNotes-KnownIssues.1)
    *   [Known Limitations With This Initial Release](#TerracottaDB10.1ReleaseNotes-KnownLimitationsWithThisInitialRelease)
*   [Notes:](#TerracottaDB10.1ReleaseNotes-Notes:)

Feature Highlights
------------------

Distributed Storage & Compute:

*   In-Memory Key-Value store supporting scale-out and optional disk persistence
    
*   Flexible Data Model allowing loose schema & strongly typed data
    
*   In-Memory indexing for fast search and analytics
    
*   Purpose-built fast restartability
    
*   Fine-granular control on consistency, isolation, durability, and atomicity
    
*   Advanced compute capability
    
    *   DSL with pre-implemented stream functions enabling server-side execution
        
    *   Java stream API to filter, aggregate, map data
        

Distributed Caching

*   Ehcache 3 - updated Java Caching  API 
    
*   Support for JSR-107 (JCache) Standard 
    

Other notable features include:

*   Backup and restore functionality for operational support
    
*   Advanced management, monitoring, and cluster setup for operational ease
*   Optional webMethods Adapter for building microservices using Terracotta DB 
*   Optional MashZone NextGen integration to build interactive dashboards on in-memory data   
    

Summary of Changes 10.1.0.2
---------------------------

### Resolved

*   2403 – TMC now retains offheaps, data directories and server stats after TC Server restart
*   2417 – Resolved issue where TMS uses 50% CPU if there is no TSA running when started
*   2422 – Renamed TMC resource usage Data Roots to Data Directories
*   2424 – TMC no longer displays two active server entries referring to same instance when started from Command Central
*   2427 – Terracotta DB and Terracotta BigMemory now show different component names in Command Central .
*   2428 – SPM shell scripts are now executable
*   2437 – Resolved issue where server crashed with index on cell of type DOUBLE
*   2460 – Terracotta Server configuration is no longer reset when SPM service is restarted.

### Known Issues

*   2287 - When an IMMEDIATE write is performed then currently any resulting change events are sent to registered ChangeListeners before the server can be sure that caching clients have become consistent. This can lead to a client knowing that a record has changed (been updated, added or deleted) outside of the expected consistency guarantees of IMMEDIATE writes.
*   2336 - Management operations are blocked during passive sync and some operations like creating dataset manager times out with exception.

Summary of Changes 10.1.0.1
---------------------------

### Resolved

*   2343 - Server and cluster configuration validations are more strict
    
*   2355 - Topology now checks the tc-config hostnames
*   It is highly recommended for users to upgrade/install Terracotta DB 10.1 Fix1 due to defect fixes for feature and performance improvements.

### Known Issues

*   2287 - When an IMMEDIATE write is performed then currently any resulting change events are sent to registered ChangeListeners before the server can be sure that caching clients have become consistent. This can lead to a client knowing that a record has changed (been updated, added or deleted) outside of the expected consistency guarantees of IMMEDIATE writes.
*   2336 - Management operations are blocked during passive sync and some operations like creating dataset manager times out with exception.

### Known Limitations With This Initial Release

*   Support for partially portable mutative pipelines are disabled by default
    
*   Some DSL functions are not yet optimized with "pushdown" to the server side
*   Client-to-server connections have limited reconnection capabilities.  Work-around (for potentially long network interruptions) can be to increase the configured reconnect timeout window.
*   Data inconsistency can occur from split-brain scenarios
*   New client connections must wait for in-progress long-operations to complete
*   Security features are not yet enabled

Notes:
------

*   Terracotta BigMemory 4.x and Terracotta DB 10.x clients cannot be used simultaneously in the same application without using ClassLoader separation when initializing at least one of the clients.

Document generated by Confluence on Oct 05, 2021 15:59

[Atlassian](http://www.atlassian.com/)