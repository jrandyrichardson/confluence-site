---
title:  Library to Server Compatibility Matrix  
lang: en
layout: page
keywords:
space: current
sidebar: lb2_sidebar
permalink: /display/release/Library+to+Server+Compatibility+Matrix
summary:
---

Library-to-Server Compatibility Matrix
======================================

The following tables list the versions of the Ehcache and Quartz client libraries that are compatible with certain versions of the Terracotta Server. If your installation has constraints based on an embedded version of Ehcache or Quartz, use these tables to identify the versions of the Terracotta server that are compatible with your installation.

If you are upgrading, do not use these tables. Always upgrade components using the versions provided in the Terracotta kit you install.

### Ehcache

| Ehcache | BigMemory | Notes |
| --- | --- | --- |
| 2.11.0 | 4.4 |   |
| 2.10.0 | 4.3 |   |
| 2.9.0 | 4.2 |   |
| 2.8.5 | 4.1.5 |   |
| 2.8.4 | 4.1.4 |   |
| 2.8.3 | 4.1.3 |   |
| 2.8.2 | 4.1.2 |   |
| 2.8.1 | 4.1.1 |   |
| 2.8.0 | 4.1 |   |
| 2.7.6 | 4.0.6 |   |
| 2.7.5 | 4.0.5 |   |
| 2.7.4 | 4.0.4 |   |
| 2.7.3 | 4.0.3 |   |
| 2.7.2 | 4.0.2 |   |
| 2.7.1 | 4.0.1 |   |
| 2.7 | 4.0 |   |

| Ehcache | Terracotta | Notes |
| --- | --- | --- |
| 2.6.9 | 3.7.8 |   |
| 2.6 | 3.7 | 3.7 requires terracotta-toolkit 1.6 for connectivity |
| 2.5 | 3.6 | 3.6.0-3.6.1 require terracotta-toolkit 1.4 for connectivity, 3.6.2 and higher require terracotta-toolkit 1.5 for connectivity |
| 2.4 | 3.5.2 | 3.5.2 requires terracotta-toolkit-1.3 version 3.3.0 for connectivity |
| 2.4 | 3.5.0, 3.5.1 | 3.5.0 and 3.5.1 require terracotta-toolkit-1.2 for connectivity |
| 2.3 | 3.4, 3.5 | 3.4 requires terracotta-toolkit-1.1 for connectivity, 3.5 requires terracotta-toolkit-1.2 or 1.3 for connectivity |
| 2.2 | 3.3, 3.4, 3.5 | 3.3 requires terracotta-toolkit-1.0 for connectivity, 3.4 requires terracotta-toolkit-1.1 for connectivity, 3.5 requires terracotta-toolkit-1.2 or 1.3 for connectivity. Ehcache 2.2 was the first release that supported the toolkit to allow version upward compatibility |
| 2.1 | 3.2.2 | Ehcache 2.1 was the last release before the introduction of the toolkit for connectivity |
| 2.0 | 3.2.1 |  |
| 1.7.3 | 3.2.0 |  |

### Quartz

| Quartz | Terracotta | Notes |
| --- | --- | --- |
| 2.2.1 | 4.0, 4.1 |   |
| 2.1 | 3.5, 3.6, 3.7 | 3.5 requires terracotta-toolkit-1.2 for connectivity, 3.6.0-3.6.1 require terracotta-toolkit 1.4 for connectivity, 3.6.2 and higher require terracotta-toolkit 1.5, 3.7 requires terracotta-toolkit-1.6 for connectivity |
| 2.0.0 | 3.5 | 3.5 requires terracotta-toolkit-1.2 for connectivity |
| 1.8.4 | 3.4 | 3.4 requires terracotta-toolkit-1.1 for connectivity |
| 1.8.0 | 3.3, 3.4 | 3.3 requires terracotta-toolkit-1.0 for connectivity |
| 1.7.0 | 3.2.0 |  |


