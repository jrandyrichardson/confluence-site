---
title:  Release Notes Ehcache Core 2.4  
---


* TOC
{:toc}

Release Notes for Ehcache 2.4.8
===============================

Ehcache 2.4.8 was a version update to be compatible with Terracotta 3.5.5. There are no core Ehcache changes in this release.

Release Notes for Ehcache 2.4.7
===============================

Ehcache 2.4.7 is a bug fix release

##### Resolved Issues

*   [EHC-887](https://jira.terracotta.org/jira/browse/EHC-887) - ehcache-core-2.4.6 failed to run in GAE
*   [EHC-897](https://jira.terracotta.org/jira/browse/EHC-897) - Race condition in Ehcache disk overflow storage initialization
*   [EHC-899](https://jira.terracotta.org/jira/browse/EHC-899) - Ehcache Transaction Search Error: "count", "sum" errors when the cache is "Local" transaction cache

Release Notes for Ehcache 2.4.6
===============================

Ehcache 2.4.6 is a bug fix release

##### Resolved Issues

*   [EHC-852](https://jira.terracotta.org/jira/browse/EHC-852) - NotSerializableException when Ehcache tries overflow data to disk in XA Mode
*   [EHC-857](https://jira.terracotta.org/jira/browse/EHC-857) - Write-behind IllegalMonitorState when last client terminates
*   [EHC-879](https://jira.terracotta.org/jira/browse/EHC-879) - ReadWriteSerializationCopyStrategy does not use TCCL for resolving classes

Release Notes for Ehcache Core 2.4.5
====================================

Ehcache 2.4.5 is a bug fix release.

##### Resolved Issues

*   6129 - NonStopCache causing application to hang when it is shutdown
*   6157 - Cache.replace(oldElement, newElement) with local cache and big memory throws ClassCastException

* * *

Release Notes for Ehcache Core 2.4.4
====================================

Ehcache 2.4.4 is a bug fix release.

##### Resolved Issues

*   [CDV-1593](https://jira.terracotta.org/jira/browse/CDV-1593) - Replicated cache events on TC clustered caches may not work in all configurations
*   5993 - Resolve rejoin timeout issues (previously with rejoin turned on if nonStop timeoutMillis was less than the cache startup time, then the cache was not be able to start)
*   5985 - Resolve exception (javax.management.InstanceAlreadyExistsException) with programatic add/remove of cache

* * *

Release Notes for Ehcache Core 2.4.3
====================================

##### Resolved Issues

*   [EHC-846](https://jira.terracotta.org/jira/browse/EHC-846) - Give access to attribute name within the Extractor classes in search
*   [EHC-848](https://jira.terracotta.org/jira/browse/EHC-848) - pass arguments when constructing attribute extractors instances
*   [EHC-852](https://jira.terracotta.org/jira/browse/EHC-852) - Fixed NotSerializableException when Ehcache tries overflow data to disk in XA Mode
*   [EHC-853](https://jira.terracotta.org/jira/browse/EHC-853) - Timestamper.next() can loop a billion times or more
*   5811 - throw InvalidConfigurationException for too high values of ehcache concurrency

* * *

Release Notes for Ehcache Core 2.4.2
====================================

##### Resolved Issues

*   [EHC-845](https://jira.terracotta.org/jira/browse/EHC-845) CompoundStore.putWithWriter doesn't follow contract regarding return value
*   5628 - Resolved incompatibility with local transactions and search

##### Compatibility

*   Compatible with Terracotta 3.5.1 - which includes platform bug fixes. See [Terracotta 3.5.1 Release Notes](Terracotta+3.5+Release+Notes)
    
    * * *
    
    Release Notes for Ehcache Core 2.4.1
    ====================================
    

##### Updates and Enhancements

*   Created improved toString method on ResultImpl
*   Allowed transactional caches that use the xa\_strict mode to be configured as nonstop caches.

Please refer to [Terracotta 3.5.0](Release+Notes+Terracotta+3.5.0) Release notes for more detailed information on new features Ehcache 2.4.0 and up.

##### Fix list in Jira

Ehcache 2.4.1 [EHC Jira Project](https://jira.terracotta.org/jira/browse/EHC#selectedTab=com.atlassian.jira.plugin.system.project%3Achangelog-panel)

##### Other Resolved Issues

*   5396 - NullPointerException using Hibernate if you don't specify that NonStopCache is disabled
*   5376 - The ehcache xa transactional mode (not xa\_strict, that one is fine) doesn't play 100% well with the Atomikos transaction manager: if all other XA resources participating in the transaction return XA\_RDONLY during prepare then Atomikos will mistakenly report the transaction's status as UNKNOWN instead of COMMITTED, making ehcache rollback the changes.  
    This is a bug in Atomikos, already reported here: [http://fogbugz.atomikos.com/default.asp?community.6.802.3](http://fogbugz.atomikos.com/default.asp?community.6.802.3) we programatically worked around it

##### Known Issues

*   [EHC-837](https://jira.terracotta.org/jira/browse/EHC-837) putIfAbsent does not work as intended with synchronous RMI distributed caches. None of the CAS operations guarantee this for replicated caching, only for standalone and Terracotta Server Array distributed caches.
*   JRockit Issues with versions below r28.
    *   Workaround: At least version r28 of JRockit must be used when using BigMemory
*   For Distributed Ehcache, the first release does not support BigMemory on client nodes (L1s), but rather only on Terracotta Server Array (L2s).
*   On Firefox and Chrome the Ehcache Monitor charts may go blank. [http://www.sencha.com/forum/showthread.php?78788-OPEN-197-3.0.0-svn-5208-this.swf.setDataprovider-is-not-a-function](http://www.sencha.com/forum/showthread.php?78788-OPEN-197-3.0.0-svn-5208-this.swf.setDataprovider-is-not-a-function)
    *   Workaround: refresh browser
*   We recommend using a 64bit JVM when using BigMemory. With 32bit JVMs the total addressable memory (on-heap and off-heap is limited by the 32bit address space AND some JVM version specific limits that vary depending on the operating system they are running on). For Example with 32bit JRockit, the max addressable memory is about 3.6GB, permitting up to 2.8GB off-heap and 800MB on-heap. For 32bit Hotspot the max off-heap size is typically <2GB. Some experimentation may be required.

* * *

Release Notes for Ehcache Core 2.4.0
====================================

### New Feature, Improvements and Upgrade Information

Please see [Release Notes Terracotta 3.5.0](Release+Notes+Terracotta+3.5.0)

##### Expected Updates and Scheduled Bug Fixes

in Ehcache 2.4.0 [EHC Jira Project](https://jira.terracotta.org/jira/browse/EHC#selectedTab=com.atlassian.jira.plugin.system.project%3Achangelog-panel)

##### Known Issues Ehcache 2.4.0

*   5396 - NullPointerException using Hibernate if you don't specify that NonStopCache is disabled
    *   Workaround: add a nonstop element (with enabled=false if its desired like that) in the ehcache config for terracotta clustered caches
*   5376 - The ehcache xa transactional mode (not xa\_strict, that one is fine) doesn't play 100% well with the Atomikos transaction manager: if all other XA resources participating in the transaction return XA\_RDONLY during prepare then Atomikos will mistakenly report the transaction's status as UNKNOWN instead of COMMITTED, making ehcache rollback the changes.  
    This is a bug in Atomikos, already reported here: [http://fogbugz.atomikos.com/default.asp?community.6.802.3](http://fogbugz.atomikos.com/default.asp?community.6.802.3)
    *   If this issue arises configuring a mix of xa and xa\_strict caches should avoid the issue.

*   JRockit Issues with versions below r28.
    *   Workaround: At least version r28 of JRockit must be used when using BigMemory
*   For Distributed Ehcache, the first release does not support BigMemory on client nodes (L1s), but rather only on Terracotta Server Array (L2s).
*   On Firefox and Chrome the Ehcache Monitor charts may go blank. [http://www.sencha.com/forum/showthread.php?78788-OPEN-197-3.0.0-svn-5208-this.swf.setDataprovider-is-not-a-function](http://www.sencha.com/forum/showthread.php?78788-OPEN-197-3.0.0-svn-5208-this.swf.setDataprovider-is-not-a-function)
    *   Workaround: refresh browser
*   We recommend using a 64bit JVM when using BigMemory. With 32bit JVMs the total addressable memory (on-heap and off-heap is limited by the 32bit address space AND some JVM version specific limits that vary depending on the operating system they are running on). For Example with 32bit JRockit, the max addressable memory is about 3.6GB, permitting up to 2.8GB off-heap and 800MB on-heap. For 32bit Hotspot the max off-heap size is typically <2GB. Some experimentation may be required.

Document generated by Confluence on Oct 05, 2021 15:59

[Atlassian](http://www.atlassian.com/)
