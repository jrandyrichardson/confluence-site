---
title:  Release Notes Terracotta 3.4.0  
lang: en
layout: page
keywords:
space: release
sidebar: lb2_sidebar
permalink: /display/release/Release+Notes+Terracotta+3.4.0.html
summary:
---

The Terracotta 3.4.0\_1 kit includes Terracotta 3.4.0, Ehcache 2.3.1 and Quartz 1.8.4. Please see Ehcache 2.3.1 [Release Notes](Release+Notes+Ehcache+2.3.1) for further information on changes

Release Notes for Terracotta 3.4.0
==================================

### New Feature

##### BigMemory for the Terracotta Server Array (L2)

BigMemory is an add-on product for Enterprise Ehcache and the Terracotta Server Array. It provides an off-heap cache that is not subject to Garbage Collection (GC). By avoiding performance-killing GC pauses, BigMemory allows Java applications to use as much memory as required. It works everywhere Ehcache works — for stand-alone and distributed caches — with no changes to application code and no special JVM or operating system requirements. It is available in two forms:

### Additional Improvements

*   Developer console improvements
*   Platform Updates
    *   Certification on JDK 1.6.0\_22

### Expected Updates and Scheduled Bug Fixes

in the Terracotta 3.4.0 Server Array and Kit [CDV Jira Project](https://jira.terracotta.org/jira/browse/CDV#selectedTab=com.atlassian.jira.plugin.system.project%3Achangelog-panel)

If You Are Upgrading: Terracotta Integration Modules in the Terracotta Toolkit

Users upgrading from a version earlier than 3.3.0 should note that the following Terracotta Integration Modules (TIMs) are now part of the Terracotta Toolkit JAR:

*   tim-concurrent-collections
*   tim-distributed-cache
*   tim-annotations
*   tim-async-processing

Product installation does not require specifying these TIMs. See the [product documentation](http://terracotta.org/documentation) for more information on installing Terracotta products with the Terracotta Toolkit JAR.

##### Known Issues

*   DEV-4875: Clustered Offheap statistics show allocated offheap space rather than offheap occupied in Terracotta Developer Console Graphs. This is as designed but should be noted as it may cause confusion.


