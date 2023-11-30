---
title:  Ehcache 2.7 Release Notes  
lang: en
layout: page
keywords:
space: archive
sidebar: lb2_sidebar
permalink: /display/archive/Ehcache+2.7+Release+Notes.html
summary:
---

* TOC
{:toc}



### Ehcache 2.7.7

*   #### Bug Fix
    
    *   \[[EHC-1079](https://jira.terracotta.org/browse/EHC-1079)\] - Deadlock in ARC eviction when using explicit locks
    *   \[[EHC-1089](https://jira.terracotta.org/browse/EHC-1089)\] - CacheConfiguration#clone method copies collection fields references instead of cloning them

### Ehcache 2.7.4

*   #### Bug Fix
    
    *   \[[EHC-1019](https://jira.terracotta.org/browse/EHC-1019)\] - Races in fault/flush logic in CacheStore
    *   \[[EHC-1048](https://jira.terracotta.org/browse/EHC-1048)\] - CacheManager number of statistics threads is not configurable

### Ehcache 2.7.2

*   #### Bug Fix
    
    *   \[[EHC-1044](https://jira.terracotta.org/browse/EHC-1044)\] - java.lang.NoClassDefFoundError: org/terracotta/statistics/StatisticsManager in EHCache 2.7.1

### Ehcache 2.7.1

*   #### New Feature
    
    *   \[[EHC-1013](https://jira.terracotta.org/browse/EHC-1013)\] - Add ConfigurableRMIClientSocketFactory createSocket implementation using configurable properties
*   #### Bug Fix
    
    *   \[[EHC-946](https://jira.terracotta.org/browse/EHC-946)\] - Ehcache Perf Tests need reworking
    *   \[[EHC-950](https://jira.terracotta.org/browse/EHC-950)\] - TerracottaBootstrapCacheLoader + keySnapshotter + cleanup on cache/cacheManager shutdown
    *   \[[EHC-999](https://jira.terracotta.org/browse/EHC-999)\] - XML parsing error on file jersey-server-1.1.5.jar
    *   \[[EHC-1001](https://jira.terracotta.org/browse/EHC-1001)\] - client application crashes with ConcurrentModificationException on net.sf.ehcache.pool.impl.AbstractPool.getSize
    *   \[[EHC-1002](https://jira.terracotta.org/browse/EHC-1002)\] - Incorrect and inconsistent cache sizing calculation
    *   \[[EHC-1003](https://jira.terracotta.org/browse/EHC-1003)\] - CacheLoader is not always invoked when calling getAllWithLoader()
    *   \[[EHC-1004](https://jira.terracotta.org/browse/EHC-1004)\] - CacheStore fails to flush keys on authority on flush when CacheConfiguration isClearOnFlush
    *   \[[EHC-1006](https://jira.terracotta.org/browse/EHC-1006)\] - PoolBasedBackEnd.recalculateSize seems racy
    *   \[[EHC-1010](https://jira.terracotta.org/browse/EHC-1010)\] - Statistics values inverted in ehcache 2.7.0
    *   \[[EHC-1011](https://jira.terracotta.org/browse/EHC-1011)\] - localOfHeapPutCount instead of localOffHeapPutCount
    *   \[[EHC-1014](https://jira.terracotta.org/browse/EHC-1014)\] - DiskMarker created before maxElementsInMemory is reached
    *   \[[EHC-1020](https://jira.terracotta.org/browse/EHC-1020)\] - Disable cache by configuration
    *   \[[EHC-1021](https://jira.terracotta.org/browse/EHC-1021)\] - CacheStore doesn't support custom InMemoryEvictionPolicy
    *   \[[EHC-1022](https://jira.terracotta.org/browse/EHC-1022)\] - StreamCorruptedException after TSA restart/recovery
    *   \[[EHC-1023](https://jira.terracotta.org/browse/EHC-1023)\] - Update Query.maxResults(int)'s JavaDoc wrt negative values
    *   \[[EHC-1028](https://jira.terracotta.org/browse/EHC-1028)\] - nonstop store initialization race condition
    *   \[[EHC-1032](https://jira.terracotta.org/browse/EHC-1032)\] - Ehcache stats: RemovedCount throws NPE

### Ehcache 2.7.0

*   #### New Feature
    
    *   \[[EHC-739](https://jira.terracotta.org/browse/EHC-739)\] - OSGi headers in the MANIFEST
    *   \[[EHC-951](https://jira.terracotta.org/browse/EHC-951)\] - Improve error messages for ARC
*   #### Bug Fix
    
    *   \[[EHC-394](https://jira.terracotta.org/browse/EHC-394)\] - Prevent Elements to be stored in both MemoryStore and ClusteredStore
    *   \[[EHC-925](https://jira.terracotta.org/browse/EHC-925)\] - Unsafe type cast in class net.sf.ehcache.event.RegisteredEventListeners constructor
    *   \[[EHC-932](https://jira.terracotta.org/browse/EHC-932)\] - Premature eviction notifications
    *   \[[EHC-939](https://jira.terracotta.org/browse/EHC-939)\] - BlockingCache.get sometimes returns null without holding lock
    *   \[[EHC-948](https://jira.terracotta.org/browse/EHC-948)\] - Clustered caches should honor sizeOf policy
    *   \[[EHC-970](https://jira.terracotta.org/browse/EHC-970)\] - CacheManager.addCacheIfAbsent is not thread-safe
    *   \[[EHC-992](https://jira.terracotta.org/browse/EHC-992)\] - Dynamic maxEntriesLocalHeap not honored
    *   \[[EHC-995](https://jira.terracotta.org/browse/EHC-995)\] - CHMv8 internalReplace doesn't account for Element.equals
    *   \[[EHC-1025](https://jira.terracotta.org/browse/EHC-1025)\] - Update CacheConfiguration.maxBytesLocal\*'s JavaDoc (& check for dyn changes)

  


