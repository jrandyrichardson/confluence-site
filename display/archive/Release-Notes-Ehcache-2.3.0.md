---
title:  Release Notes Ehcache 2.3.0  
lang: en
layout: page
keywords:
space: archive
sidebar: lb2_sidebar
permalink: /display/archive/Release+Notes+Ehcache+2.3.0.html
summary:
---

Release Notes for Ehcache 2.3.0 EE - Enterprise Edition
=======================================================

### New Feature

##### BigMemory

BigMemory is an add-on product for Enterprise Ehcache. It provides an off-heap cache that is not subject to Garbage Collection (GC). By avoiding performance-killing GC pauses, BigMemory allows Java applications to use as much memory as required. It works everywhere Ehcache works — for stand-alone and distributed caches — with no changes to application code and no special JVM or operating system requirements.

### Additional Improvements

*   Updated release of Ehcache-monitor to support BigMemory  
    Users of Ehcache-monitor ([http://ehcache.org/documentation/monitor](http://ehcache.org/documentation/monitor)) should download the updated build ehcache-monitor-kit-1.0.2-distribution.tar.gz along with the ehcache-core-ee-2.3.0-distribution.tar.gz build. The new version reports additional statistics for the off-heap store.
*   Platform Updates
    *   Supported Platform [3.4.0 and 3.4.1 Platform Support](3.4.0+and+3.4.1+Platform+Support)
    *   Added a fix to enable Ehcache support for IBM z/OS operating system [EHC-768](https://jira.terracotta.org/jira/browse/EHC-768)
    *   Certification on JDK 1.6.0\_22

##### Expected Updates and Scheduled Bug Fixes

in Ehcache 2.3.0 [EHC Jira Project](https://jira.terracotta.org/jira/browse/EHC#selectedTab=com.atlassian.jira.plugin.system.project%3Achangelog-panel)

##### Known Issues

*   JRockit Issues with versions below r28.
    *   Workaround: At least version r28 of JRockit must be used when using BigMemory
*   For Distributed Ehcache, the first release does not support BigMemory on client nodes (L1s), but rather only on Terracotta Server Array (L2s).
*   On Firefox and Chrome the Ehcache Monitor charts may go blank. [http://www.sencha.com/forum/showthread.php?78788-OPEN-197-3.0.0-svn-5208-this.swf.setDataprovider-is-not-a-function](http://www.sencha.com/forum/showthread.php?78788-OPEN-197-3.0.0-svn-5208-this.swf.setDataprovider-is-not-a-function)
    *   Workaround: refresh browser
*   We recommend using a 64bit JVM when using BigMemory. With 32bit JVMs the total addressable memory (on-heap and off-heap is limited by the 32bit address space AND some JVM version specific limits that vary depending on the operating system they are running on). For Example with 32bit JRockit, the max addressable memory is about 3.6GB, permitting up to 2.8GB off-heap and 800MB on-heap. For 32bit Hotspot the max off-heap size is typically <2GB. Some experimentation may be required.


