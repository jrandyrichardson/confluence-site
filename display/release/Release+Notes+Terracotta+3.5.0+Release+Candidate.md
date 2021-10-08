Product Information : Release Notes Terracotta 3.5.0 Release Candidate  

1.  [Product Information](index)
2.  [Home](Home)

Product Information : Release Notes Terracotta 3.5.0 Release Candidate
======================================================================

Created by Fiona OShea, last modified by Mike Allen on Mar 14, 2011

The Terracotta 3.5.0 Release Candidate includes Ehcache Core 2.4.0 and Quartz 2.0.0 RC

### Summary of Changes

*   Addition of Ehcache Search
*   New Ehcache Consistency setting (strong or eventual)
*   Improvements to Enterprise Ehcache Disk Store (for use in conjunction with BigMemory)
*   New local and xa (non-strict) Ehcache transaction modes
*   NonStopCache is now in core
*   Explicit locking is now in core
*   Ehcache rejoin. Distributed Ehcache L1's are now able to rejoin the cluster on disconnect/reconnect from the Terracotta Server Array
*   Ehcache Size method performance improvement for distributed caches
*   Enhanced L2 BigMemory implementation (with self-tuning)

Quartz Scheduler [http://www.quartz-scheduler.org](http://www.quartz-scheduler.org)

*   New fluent configuration API (see below)
*   Quartz Where - permitting control of where jobs execute in a clustered environment through node groups and node type constraints  
    A getting-started page for using Quartz Scheduler Locality API is available: [Getting Started With Quartz Scheduler Locality API](Getting+Started+With+Quartz+Scheduler+Locality+API)
*   Clustered Quartz performance improvements

#### Additional Improvements

*   Developer console improvements
*   Platform Updates
    *   Certification on JDK 1.6.0\_22

#### About Ehcache Search

The Ehcache Search API allows you to execute arbitrarily complex queries against Ehcache. The standalone Ehcache Search implementation is limited to the memoryStore (ie it has no support for diskStore or BigMemory - aka offHeapStore). Ehcache Search support for distributed caches is an Enterprise-only feature, and is designed to work across all Terracotta server storage tiers (memory, BigMemory, and disk).

The easiest way to get started with the API is to try the sample application posted on github. This includes a ready to run bundle for \*nix (just download, unpack, and execute with 'sh run.sh'). This bundle also includes a maven pom to rebuild (using the latest SNAPSHOT rather than that in the bundle): [https://github.com/sharrissf/Ehcache-Search-Sample/downloads](https://github.com/sharrissf/Ehcache-Search-Sample/downloads)

Ehcache Search docs are here: [http://ehcache.org/documentation/search](http://ehcache.org/documentation/search)

A getting-started page for using Ehcache Search with clustered caches is also available: [Getting Started With Ehcache Search API For Clustered Caches](Getting+Started+With+Ehcache+Search+API+For+Clustered+Caches)

#### New configuration options

NonStopCache is disabled by default, to enable non-stop, update the <terracotta> element in each <cache>

<terracotta clustered="true">
   <nonstop enabled="true"/>
</terracotta>

Ehcache rejoin on disconnect from Terracotta Server Array is disabled by default and can be enabled as follows in ehcache.xml. Note: that rejoin enable is dependent on NonStopCache being enabled.

<terracottaConfig rejoin="true" url="localhost:9510" />

Ehcache now has three transaction modes:

*   **local**, which will use a local transaction manager (rather than a JTA one), and permit users to create ACID operations across multiple caches
    
    transactionalMode="local"
    
*   **xa**, which in Beta1 was temporarily called jta\_local will use a JTA transaction manager, but will be designed for use with a single resource manager in mind and to work with a lower level of recoverability than the "xa\_strict" mode. (it won't recover transaction is the case of catastrophic failure).
    
    transactionalMode="xa"
    

The original "xa" mode is now "xa\_strict"

Local is the fastest mode, followed by xa, followed by xa\_strict

A sample that demonstrates the new transaction modes is available here: [https://github.com/sharrissf/Ehcache-Local-Transaction-Sample/downloads](https://github.com/sharrissf/Ehcache-Local-Transaction-Sample/downloads)

#### About Quartz Scheduler 2.0

Please see the [What's new in Quartz 2.0](http://www.quartz-scheduler.org) document

Note: [Quartz Where](Getting+Started+With+Quartz+Scheduler+Locality+API) is only supported when using the TerracottaJobStore, and is an enterprise-only feature.

### Upgrade Information

Brief descriptions of major changes that may affect upgrades from previous versions of Terracotta product installations are listed in this section. See the [product documentation](http://www.terracotta.org/documentation/3.5.0-RC/product-documentation-1page) for more information.

#### Change to <cache> "coherent" Attribute

The <cache> coherent attributed is deprecated in favor of consistency=\[strong | eventual\]. For example, where you've used coherent="true" use consistency="strong". For coherent="false" use consistency="eventual" (eventually consistent). If you've set the coherent attribute programmatically, the setting will continue to be honored and mapped as described.

#### New Transactionnal Modes

The <cache> attribute `transactionalMode` can now have one of the following values:

*   off – Default.
*   local – Transactional to a local store; no external XA resource used.
*   xa – Basic JTA support.
*   xa\_strict – Full JTA support.

Note that with a transactional cache, the <cache> attribute `consistency` must be set to "strong".

#### Coherency API Deprecated in Favor of Bulk-Load Methods

| 
Deprecated Method

 | 

New Method

 | 

Notes

 |
| --- | --- | --- |
| 

`isNodeCoherent()`

 | 

`isNodeBulkLoadEnabled()`

 | 

These methods are opposites: `isNodeCoherent()` == `!isNodeBulkLoadEnabled()`.

 |
| 

`isClusterCoherent()`

 | 

`isClusterBulkLoadEnabled()`

 | 

These methods are opposites: `isClusterCoherent()` == `!isClusterBulkLoadEnabled()`.

 |
| 

`setNodeCoherent()`

 | 

`setNodeBulkLoadEnabled()`

 | 

These methods are opposites: `setNodeCoherent()` == `!setNodeBulkLoadEnabled()`.

 |
| 

`waitUntilClusterCoherent()`

 | 

`waitUntilClusterBulkLoadComplete()`

 | 

 |

#### NonStopCache Becomes a <cache> Subelement

NonStopCache is no longer a decorator. Default values for NonStopCache behavior settings have also changed.

#### Change in default storageStrategy for distributed Ehcache

The DCV2 strategy is now the default. The old strategy is deprecated, but can be accessed by setting storageStrategy=classic. Note: many of the new features (such as eventual consistency, rejoin, and nonstop) are not compatible with classic.

### Expected Updates and Scheduled Bug Fixes

[CDV](https://jira.terracotta.org/jira/secure/IssueNavigator.jspa?mode=hide&requestId=11716) Project Jira fixes in Terracotta 3.5.0 RC  
[EHC](https://jira.terracotta.org/jira/browse/EHC#selectedTab=com.atlassian.jira.plugin.system.project%3Aroadmap-panel) Project scheduled fixes for Ehcache 2.4.0  
[QTZ](https://jira.terracotta.org/jira/browse/QTZ/fixforversion/10842#selectedTab=com.atlassian.jira.plugin.system.project%3Aversion-issues-panel) Project scheduled fixes for Quartz 2.0.0 RC

### Release Candidate Notes

##### In RC

*   Monitoring of Write Behind, JTA
*   Ehcache Search is supported with Terracotta clustered caches
    *   Active/Passive server failover is supported
    *   Attribute.like() is no longer case sensitive for clustered search
    *   Server side eviction does not update search index causing incorrect search results

*   Resolution to issues with NonStopCache and Rejoin interation with Hibernate, BlockingCache and Explicit Locking
*   (writebehind) maxQueueSize is now implemented
*   (writebehind) maxQueueSize is configurable using the ehcache.xml

##### Known Issues and Limitations

*   FORGE-594 Quartz avg load monitoring only supported on JDK6

##### Specific items which are planned for the final release, but are not included in Beta

Please email any questions you have regarding the beta to pm <at> terracotta.org

Document generated by Confluence on Oct 05, 2021 15:59

[Atlassian](http://www.atlassian.com/)