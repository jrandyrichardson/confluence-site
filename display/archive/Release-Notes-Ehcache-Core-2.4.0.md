---
title:  Release Notes Ehcache Core 2.4.0  
lang: en
layout: page
keywords:
space: archive
sidebar: lb2_sidebar
permalink: /display/release/Release+Notes+Ehcache+Core+2.4.0.html
summary:
---

Release Notes for Ehcache Core 2.4.0
====================================

### New Feature, Improvements and Upgrade Information

Please see [Release Notes Terracotta 3.5.0 Release Candidate](Release+Notes+Terracotta+3.5.0+Release+Candidate)

##### Expected Updates and Scheduled Bug Fixes

in Ehcache 2.4.0 [EHC Jira Project](https://jira.terracotta.org/jira/browse/EHC#selectedTab=com.atlassian.jira.plugin.system.project%3Achangelog-panel)

##### Known Issues

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


