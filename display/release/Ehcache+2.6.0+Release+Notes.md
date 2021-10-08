---
title:  Ehcache 2.6.0 Release Notes  
---

/\*<!\[CDATA\[\*/ div.rbtoc1633463967844 {padding: 0px;} div.rbtoc1633463967844 ul {list-style: disc;margin-left: 0px;} div.rbtoc1633463967844 li {margin-left: 0px;padding-left: 0px;} /\*\]\]>\*/

*   [Release Notes for Standalone commercial Ehcache 2.6.0](#Ehcache2.6.0ReleaseNotes-ReleaseNotesforStandalonecommercialEhcache2.6.0)
    *   [Summary of Changes](#Ehcache2.6.0ReleaseNotes-SummaryofChanges)
    *   [Upgrading](#Ehcache2.6.0ReleaseNotes-Upgrading)
        *   [DiskStorePath Methods Removed](#Ehcache2.6.0ReleaseNotes-DiskStorePathMethodsRemoved)
        *   [CacheManager Creation Methods](#Ehcache2.6.0ReleaseNotes-CacheManagerCreationMethods)
        *   [OverflowToDisk and DiskPersistent Attributes Deprecated](#Ehcache2.6.0ReleaseNotes-OverflowToDiskandDiskPersistentAttributesDeprecated)
    *   [Platform Changes](#Ehcache2.6.0ReleaseNotes-PlatformChanges)
        *   [Known Issues and Limitations](#Ehcache2.6.0ReleaseNotes-KnownIssuesandLimitations)

Release Notes for Standalone commercial Ehcache 2.6.0
=====================================================

Standalone commercial Ehcache 2.6.0 features new and improved standalone Ehcache including a full fault tolerant restartable store, search enhancements, and more.

Summary of Changes
------------------

*   [Fast Restartability](http://www.ehcache.org/documentation/configuration/fast-restart)  
    Standalone Ehcache now has support for full fault tolerance using new Fast Restartability (from disk). This allows for continuous accessibility of previously cached data after a planned or unplanned shutdown.

*   [Search](http://www.ehcache.org/documentation/apis/search)  
    All Ehcache search features are now available for BigMemory in standalone mode. Various performance improvements and support for "[GroupBy](http://www.ehcache.org/documentation/apis/search#grouping-results)" expression is now available.

*   [TMC (Terracotta Management Console)](http://terracotta.org/documentation/terracotta-tools/tms)  
    TMC is a new web-based monitoring and administration tool. This replaces Ehcache Monitor and provides an enhanced user interface focused on ease of use in managing your Ehcache deployments. Contact pm <at> terracotta.org for additional details.

Upgrading
---------

If you are upgrading from a previous version of Ehcache, note the following changes.

If you are upgrading from a substantially older version of Ehcache, you must refer to the release notes for major intervening releases.

#### DiskStorePath Methods Removed

A CacheManager's diskstore path cannot be changed once it is set in configuration. If the diskstore path is changed, the CacheManager must be recycled for the new path to take effect.

The following methods, which implied that the diskstore path could be changed programmatically, have been removed:

*   Cache.setDiskStorePath()
*   CacheConfiguration.getDiskStorePath()
*   CacheConfiguration.setDiskStorePath()
*   CacheConfiguration.diskStorePath()
*   CacheManager.getDiskStorePath()

The correct way to programmatically set a diskstore path is:

DiskStoreConfiguration diskStoreConfiguration = new
DiskStoreConfiguration();

diskStoreConfiguration.setPath("/my/path/dir");

// Already created a configuration object ...
configuration.addDiskStore(diskStoreConfiguration);

CacheManager mgr = new CacheManager(configuration);

#### CacheManager Creation Methods

CacheManager creation methods have evolved over the past few releases of Ehcache. To find out more about how CacheManager creation is handled, see [this document](http://ehcache.org/documentation/get-started/key-classes-methods#cachemanager).

#### OverflowToDisk and DiskPersistent Attributes Deprecated

Previous disk persistence configuration elements will continue to work, but it is strongly recommended to remove them and use the new persistence strategy options. For more information, refer to [Upgrading to Ehcache 2.6](http://www.ehcache.org/documentation/configuration/fast-restart#upgrading-to-ehcache-26).

Platform Changes
----------------

*   JDK 1.6 is the only supported JDK in Ehcache 2.6.0
*   JBoss AS 7 is now supported with Ehcache 2.6.0 in addition to previously supported containers

#### Known Issues and Limitations

*   DEV-7761 - Terracotta Toolkit 1.6-runtime-ee-5.0.0 is not backward compatible with previous versions of Ehcache. It requires 2.6.0 and higher.
*   While setting TMC, if multiple CacheManagers are created with configuration that includes
    
    <managementRESTService enabled="true" bind="\[ip\_address\]:\[port\]" ... >
    
    and all have an identical binding, then the first CacheManager to register with the REST agent will have its <managementRESTService> settings applied to the connection between the REST agent and the Terracotta Management Server. The remaining CacheManagers will have their <managementRESTService> settings ignored, including security settings.
    *   If all CacheManagers have identical <managementRESTService> settings, no action is required.
    *   If CacheManagers <managementRESTService> settings vary, issue different ports to each CacheManager.  
        See the Terracotta Management Console README file (tmc/README.txt in the kit) for more information on enabling the REST service in Ehcache.
*   DEV-7626 - With SSL and needClientAuth enabled, agent not connecting to TMC. There are two workarounds for this issue. Either workaround should be sufficient.
    *   Workaround 1: Stop TMS. Edit "~/.tc/mgmt/config.xml" find the secured="false" attribute in the xml, and change the value to true. Start the TMS.
    *   Workaround 2: In the TMC, go to the connection manager and choose to edit the connection, change the connection timeout from 5000 to 5001 and click "apply". (actually any superficial edit will do).
*   DEV-7646 - Heavy Memory Usage / Leak in TMC (Browser-Side Javascript) on Chrome on Linux
    *   Workaround: Use Chrome on non Linux platform

Please email any questions you have regarding this release to pm <at> terracotta.org

Document generated by Confluence on Oct 05, 2021 15:59

[Atlassian](http://www.atlassian.com/)
