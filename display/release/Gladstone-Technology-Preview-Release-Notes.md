Product Information : Gladstone Technology Preview Release Notes  

1.  [Product Information](index.html)
2.  [Home](Home.html)

Product Information : Gladstone Technology Preview Release Notes
================================================================

Created by Fiona OShea, last modified on Jun 25, 2012

/\*<!\[CDATA\[\*/ div.rbtoc1633463967505 {padding: 0px;} div.rbtoc1633463967505 ul {list-style: disc;margin-left: 0px;} div.rbtoc1633463967505 li {margin-left: 0px;padding-left: 0px;} /\*\]\]>\*/

*   [Release Notes for Gladstone Technology Preview2](#GladstoneTechnologyPreviewReleaseNotes-ReleaseNotesforGladstoneTechnologyPreview2)
    *   [Summary of Changes](#GladstoneTechnologyPreviewReleaseNotes-SummaryofChanges)
    *   [Upgrading](#GladstoneTechnologyPreviewReleaseNotes-Upgrading)
        *   [DiskStorePath Methods Removed](#GladstoneTechnologyPreviewReleaseNotes-DiskStorePathMethodsRemoved)
        *   [CacheManager Creation Methods](#GladstoneTechnologyPreviewReleaseNotes-CacheManagerCreationMethods)
        *   [OverflowToDisk and DiskPersistent Attributes Deprecated](#GladstoneTechnologyPreviewReleaseNotes-OverflowToDiskandDiskPersistentAttributesDeprecated)
        *   [New REST Agent and Ehcache Monitor](#GladstoneTechnologyPreviewReleaseNotes-NewRESTAgentandEhcacheMonitor)
    *   [Platform Changes](#GladstoneTechnologyPreviewReleaseNotes-PlatformChanges)
        *   [Known Issues and Limitations](#GladstoneTechnologyPreviewReleaseNotes-KnownIssuesandLimitations)

Release Notes for Gladstone Technology Preview2
===============================================

The Gladstone Technology Preview features new and improved standalone Ehcache. This preview is limited to standalone Ehcache without Terracotta Server Array (TSA). Subsequent Tech Preview(s) will include TSA backed Ehcache.

Summary of Changes
------------------

*   Terracotta Management Console  
    A new web-based monitoring and administration tool for standalone Ehcache applications. This replaces Ehcache Monitor and provides an enhanced user interface focused on ease of use in managing your Ehcache deployments.

*   Fast Restartability  
    Standalone Ehcache now has support for full fault tolerance using new Fast Restartability (from disk). This allows for continuous accessibility of previously cached data after a planned or unplanned shutdown. For more information, refer to documentation [here](http://www.ehcache.org/documentation/beta/fast-restart)

*   Search  
    All Ehcache search features are now available for BigMemory in standalone mode. Various performance improvements and support for "GroupBy" expression is now available. For more information on search related enhancements, refer to documentation [here](http://www.ehcache.org/documentation/beta/search)

Upgrading
---------

If you are upgrading from a previous version of Ehcache, note the following changes.

If you are upgrading from a substantially older version of Ehcache, see the release notes for major intervening releases to learn about potential upgrade issues.

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

Most disk persistence settings will continue to work, but it is recommended to use the new persistence strategy options. For more information, refer to [this document](http://ehcache.org/documentation/beta/fast-restart#compatibility-with-previous-configurations).

#### New REST Agent and Ehcache Monitor

The new REST agent supports the new Terracotta Management Console (TMC), but not the Ehcache Monitor from previous versions of Ehcache. The Ehcache Monitor cannot be used with this release of Ehcache.

Platform Changes
----------------

*   JDK 1.6 is the only supported JDK in Ehcache 2.6.0
*   JBoss 7 is supported with Ehcache 2.6.0

#### Known Issues and Limitations

*   The Fast Restart store for the following option is not supported in this Technology Preview:
    *   JTA
*   If multiple CacheManagers are created with configuration that includes
    
    <managementRESTService enabled="true" bind="\[ip\_address\]:\[port\]" ... >
    
    and all have an identical binding, then the first CacheManager to register with the REST agent will have its <managementRESTService> settings applied to the connection between the REST agent and the Terracotta Management Server. The remaining CacheManagers will have their <managementRESTService> settings ignored, including security settings.
    *   If all CacheManagers have identical <managementRESTService> settings, no action is required.
    *   If CacheManagers <managementRESTService> settings vary, issue different ports to each CacheManager.  
        See the Terracotta Management Console README file (tmc/README.txt in the kit) for more information on enabling the REST service in Ehcache.
*   DEV-7626 - With SSL and needClientAuth enabled, agent not connecting to TMC. There are two workarounds for this issue. Either workaround should be sufficient.
    *   Workaround 1: Stop TMS. Edit "~/.tc/mgmt/config.xml" find the secured="false" attribute in the xml, and change the value to true. Start the TMS.
    *   Workaround 2: In the TMC, go to the connection manager and choose to edit the connection, change the connection timeout from 5000 to 5001 and click "apply". (actually any superficial edit will do).

Please email any questions you have regarding the technology preview to pm <at> terracotta.org

Document generated by Confluence on Oct 05, 2021 15:59

[Atlassian](http://www.atlassian.com/)