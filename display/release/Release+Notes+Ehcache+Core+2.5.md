Product Information : Release Notes Ehcache Core 2.5  

1.  [Product Information](index)
2.  [Home](Home)
3.  [Release Notes Terracotta 3.6, Ehcache 2.5, Quartz 2.1](28803333)

Product Information : Release Notes Ehcache Core 2.5
====================================================

Created by Fiona OShea, last modified on Aug 13, 2012

/\*<!\[CDATA\[\*/ div.rbtoc1633463967722 {padding: 0px;} div.rbtoc1633463967722 ul {list-style: disc;margin-left: 0px;} div.rbtoc1633463967722 li {margin-left: 0px;padding-left: 0px;} /\*\]\]>\*/

*   [Release Notes for Ehcache 2.5.4](#ReleaseNotesEhcacheCore2.5-ReleaseNotesforEhcache2.5.4)
    *   [Resolved Issues](#ReleaseNotesEhcacheCore2.5-ResolvedIssues)
*   [Release Notes for Ehcache 2.5.2](#ReleaseNotesEhcacheCore2.5-ReleaseNotesforEhcache2.5.2)
    *   [Resolved Issues](#ReleaseNotesEhcacheCore2.5-ResolvedIssues.1)
*   [Release Notes for Ehcache 2.5.1](#ReleaseNotesEhcacheCore2.5-ReleaseNotesforEhcache2.5.1)
    *   [Resolved Issues](#ReleaseNotesEhcacheCore2.5-ResolvedIssues.2)
    *   [Known Issues and Limitations](#ReleaseNotesEhcacheCore2.5-KnownIssuesandLimitations)

Release Notes for Ehcache 2.5.4
===============================

Ehcache 2.5.4 is a bug fix release

##### Resolved Issues

*   DEV-6572 - overloaded putIfAbsent API
*   DEV-7076 - Possible thread leak when shutting down Ehcache clients on Tomcat 7
*   EHC-747 - eternal attribute is confusing
*   EHC-959 - getKeys() sometimes returns an incomplete list of keys
*   EHC-936 - BlockingCache.putWithWriter not unlocking
*   EHC-923 - Hibernate entity cache region is growing over maxEntriesLocalHeap limit
*   EHC-920 - CacheManager.create() always calls ConfigurationFactory.parseConfiguration() which causes poor performance loading existing caches

Release Notes for Ehcache 2.5.2
===============================

Ehcache 2.5.2 is a bug fix release

##### Resolved Issues

*   [EHC-869](https://jira.terracotta.org/jira/browse/EHC-869) - Maven use with Terracotta very difficult to get going
*   [EHC-898](https://jira.terracotta.org/jira/browse/EHC-898) - net.sf.ehcache.configurationResourceName is ignored
*   [EHC-905](https://jira.terracotta.org/jira/browse/EHC-905) - Eviction count always comes as zero
*   [EHC-909](https://jira.terracotta.org/jira/browse/EHC-909) - Can probably add the java.lang.Class type to the built-in ignore list
*   [EHC-911](https://jira.terracotta.org/jira/browse/EHC-911) - Cache.isKeyInCache() returns true for pinnedKeys
*   [EHC-913](https://jira.terracotta.org/jira/browse/EHC-913) - Cache.setMemoryStoreEvictionPolicy isn't honored for MemoryOnlyStore
*   [EHC-918](https://jira.terracotta.org/jira/browse/EHC-918) - Deadlock using ehcache as Hibernate second level cache
*   [EHC-919](https://jira.terracotta.org/jira/browse/EHC-919) - Transient attributes are not ignored in ObjectGraphWalker, causing Ehcache to not work with Groovy
*   [EHC-920](https://jira.terracotta.org/jira/browse/EHC-920) - CacheManager.create() always calls ConfigurationFactory.parseConfiguration() which causes poor performance loading existing caches
*   [EHC-927](https://jira.terracotta.org/jira/browse/EHC-927) - ERROR net.sf.ehcache.distribution.RMIAsynchronousCacheReplicator - Exception on flushing of replication queue: null. Continuing... java.lang.NullPointerException
*   [EHC-931](https://jira.terracotta.org/jira/browse/EHC-931) - Nullpointer at net.sf.ehcache.CacheManager.getCache(CacheManager.java:894)
*   [EHC-933](https://jira.terracotta.org/jira/browse/EHC-933) - Custom size-of filter loading from resources use the wrong resource name.
*   [EHC-935](https://jira.terracotta.org/jira/browse/EHC-935) - Add a system property to disable Hibernate value mode optimizations
*   [EHC-937](https://jira.terracotta.org/jira/browse/EHC-937) - Possible memory leak in xa\_strict mode

Release Notes for Ehcache 2.5.1
===============================

Ehcache 2.5.1 is a bug fix release

##### Resolved Issues

*   [EHC-882](https://jira.terracotta.org/jira/browse/EHC-882) - Make @IgnoreSizeOf inheritable by users
*   [EHC-894](https://jira.terracotta.org/jira/browse/EHC-894) - Regression in replace(Element, Element) method on Cache
*   [EHC-900](https://jira.terracotta.org/jira/browse/EHC-900) - SizeOfPolicy cannot be set/add if TransactionManagerLookup was previously set/add
*   [EHC-901](https://jira.terracotta.org/jira/browse/EHC-901) - Pinning & Cache.getKeys is Broken
*   [EHC-903](https://jira.terracotta.org/jira/browse/EHC-903) - Not release lock in SelectableConcurrentHashMap
*   [EHC-909](https://jira.terracotta.org/jira/browse/EHC-909) - Can probably add the java.lang.Class type to the built-in ignore list
*   [EHC-910](https://jira.terracotta.org/jira/browse/EHC-910) - Agent shouldn't put in System props by default
*   [EHC-913](https://jira.terracotta.org/jira/browse/EHC-913) - Cache.setMemoryStoreEvictionPolicy isn't honored for MemoryOnlyStore
*   DEV-6477 - java.lang.AssertionError in memorystore
*   DEV-6571 - Concurrent get requests from lower tiers can cause redundant deserialization
*   DEV-6576 - Cryptic error msg from ehcache - "re-allocates CacheManager's localOffHeap limit!"
*   DEV-6639 - SerializablePortability instances hold strong references to serialized types.
*   DEV-6783 - CacheException while committing local transactions on decorated cache

##### Known Issues and Limitations

*   7994 - Terracotta Toolkit 1.5-runtime-ee-4.3.0 is not backward compatible with previous versions of Ehcache. It requires 2.5.4 and higher.
*   5376 - The ehcache xa transactional mode (not xa\_strict, that one is fine) doesn't play 100% well with the Atomikos transaction manager: if all other XA resources participating in the transaction return XA\_RDONLY during prepare then Atomikos will mistakenly report the transaction's status as UNKNOWN instead of COMMITTED, making ehcache rollback the changes.  
    This is a bug in Atomikos, already reported here: [http://fogbugz.atomikos.com/default.asp?community.6.802.3](http://fogbugz.atomikos.com/default.asp?community.6.802.3)
    *   If this issue arises configuring a mix of xa and xa\_strict caches should avoid the issue
*   JRockit Issues with versions below r28.
    *   Workaround: At least version r28 of JRockit must be used when using BigMemory
*   On Firefox and Chrome the Ehcache Monitor charts may go blank. [http://www.sencha.com/forum/showthread.php?78788-OPEN-197-3.0.0-svn-5208-this.swf.setDataprovider-is-not-a-function](http://www.sencha.com/forum/showthread.php?78788-OPEN-197-3.0.0-svn-5208-this.swf.setDataprovider-is-not-a-function)
    *   Workaround: refresh browser
*   We recommend using a 64bit JVM when using BigMemory. With 32bit JVMs the total addressable memory (on-heap and off-heap is limited by the 32bit address space AND some JVM version specific limits that vary depending on the operating system they are running on). For Example with 32bit JRockit, the max addressable memory is about 3.6GB, permitting up to 2.8GB off-heap and 800MB on-heap. For 32bit Hotspot the max off-heap size is typically <2GB. Some experimentation may be required.

Document generated by Confluence on Oct 05, 2021 15:59

[Atlassian](http://www.atlassian.com/)