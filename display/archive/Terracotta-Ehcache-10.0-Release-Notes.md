---
title:  Terracotta Ehcache 10.0 Release Notes  
lang: en
layout: page
keywords:
space: archive
sidebar: lb2_sidebar
permalink: /display/archive/Terracotta+Ehcache+10.0+Release+Notes.html
summary:
---

**Terracotta Ehcache **is an innovation release which is an improved version of Java's de facto caching API, Ehcache. It has a powerful, streamlined, modernized caching API taking advantage of newer Java features as well as the capability to be used via the JSR-107 "JCache" API.



* TOC
{:toc}

### Feature Highlights

1.  Revamped API that leverages Java generics and simplifies Cache interactions
    
2.  Full compatibility with javax.cache API (JSR-107)
    
3.  Offheap storage capabilities, including offheap only caches
    
4.  Out of the box Spring Caching and Hibernate integration thanks to the javax.cache support
    
5.  Support Custom Serializers
6.  Storage  
    1.     In-memory storage with optional persistence to disk and ultra-fast recovery
    2.     Java-based Key/Value store optimized for caching workloads
    3.     The industry's first and best Offheap storage capabilities
        
7.  Distributed Store
    
    1.     Supports various scale-out and HA deployment configurations
        
    2.     Flexible, fine-granular configuration of availability and consistency
8.  Simplified Terracotta Server Platform
    1.     The new Terracotta Server offers a much simplified and pluggable platform
    2.     Reduced inter-stripe communication resulting in less network overhead
    3.     Better componentization
    4.     Support for multiple In-Memory storage engines & Clustered entity types
    5.     Improved Life-cycle management of Server entities.
    6.     Improved baseline for future platform enhances to support enhanced feature like dynamic scaling, sophisticated data locality, partial availability etc.
9.  New Improved Monitoring Architecture
    1.    All Management Console requests are served by the Management Server without any impact on the clients connected to the server
        
    2.    TMC performance is not impacted by the number of clients connected to the server.
    3.    TC Server and clients can now server, extremely large number of TMC request with any performance impact on the operations.
    4.    Clients only talk to the Terracotta Server and pushes data on defined interval.
        
    5.    Less noisy and more accurate 
        
10.  Significant performance improvements

### **Summary of Changes in 10.0.0.2**

#### **Resolved**

*   1828 – Aligned handling of relative file path to data-root-config and servers/server/log
    
*   1829 – Servers drop-down list in monitoring view now displays stripe ID in addition to server name
    
*   1831 – Added a default for {{offheap-mode}} attribute, {{FULL}} is the default when using builders  
    Renamed {{store-identifier}} to {{restart-identifier}} and made to be optional just like in the builders
    
*   1832 – Resolved issue where the Hybrid sizeInBytes() does not take into account the actual data size which makes FRS SizeBasedCompactionPolicy become hyper aggressive in compacting data on systems that has only hybrid cache tiers.
    
*   1869 – Namespace of data-roots and frs-platform-persistence elements has been changed in tc-config as follows.  If you have any existing tc-config, you need to update it to reflect new namespace in order to make it work with 10.0.0.2.
    
       a)”[http://www.terracotta.org/config/data-roots](http://www.terracotta.org/config/data-roots)” changed to “[http://www.terracottatech.com/config/data-roots](http://www.terracottatech.com/config/data-roots)”
    
       b)”[http://www.terracotta.org/config/frs-platform-persistence](http://www.terracotta.org/config/frs-platform-persistence)” changed to “[http://www.terracottatech.com/config/platform-persistence](http://www.terracottatech.com/config/platform-persistence)”
    

#### **Known Issues**

*   _None_


