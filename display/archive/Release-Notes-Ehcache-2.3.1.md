---
title:  Release Notes Ehcache 2.3.1  
lang: en
layout: page
keywords:
space: release
sidebar: lb2_sidebar
permalink: /display/release/Release+Notes+Ehcache+2.3.1.html
summary:
---

Release Notes for Ehcache 2.3.1
===============================

Ehcache 2.3.1 is a bug fix and enhancement release. The following issues are addressed in this release.

*   [EHC-808](https://jira.terracotta.org/jira/browse/EHC-808) - Memory leak and thread-safety issue in CacheManager & Configuration
*   [EHC-810](https://jira.terracotta.org/jira/browse/EHC-810) - Changes in ManagementService method signature in 2.3.0 broke backward compatibility
*   CopyOnRead is now honored when used with the OffHeap setting
*   RMI bootstrapping Replication now working with BigMemory
*   Puts in onHeap fronted offHeap caches will now end up in the onHeap, unless onHeap is full
*   BigMemory no longer faults elements out on update


