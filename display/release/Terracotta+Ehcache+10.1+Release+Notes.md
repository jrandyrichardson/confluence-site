---
title:  Terracotta Ehcache 10.1 Release Notes  
lang: en
layout: page
keywords:
tags:
sidebar: lb2_sidebar
permalink: /display/release/Terracotta+Ehcache+10.1+Release+Notes.html
summary:
---



* TOC
{:toc}

# New Features
------------

*   New backup and restore functionality added to the server

# Summary of Changes in 10.1.0.1
------------------------------

*   ### Resolved
    
    *   2360 - Fixed issue where there were loss of entries on Ehcache when performing failover during put operations
        
    *   It is highly recommended for users to upgrade/install Terracotta DB 10.1 Fix1 due to defect fixes for feature and performance improvements.
*   ### Known Issues
    
    *   None

# Summary of Changes in 10.1
--------------------------

*   ### Resolved
    
    *   1792 - Removed struct feature from restartable offheap-store
    *   1803 - Disallowed duplicate data root identifiers and overlapping data root paths
    *   1821 - Multi-strip set-up:  
        *   Before you create a cluster, start at least one server on each of the stripes which are going to be part of the cluster.
        *   Use the configure command of the cluster tool to configure a cluster, specifying the Terracotta configuration file for all required stripes.  
            For more details about usage of the cluster tool, refer to the cluster tool documentation in the section The Cluster Tool.
    *   2168 - Fixed issue with restarting an FRS-enabled server after a cache creation failed due to insufficient size allocation
    *   2319 - 'Restartable' configuration attribute is now optional
        
*   ### Known Issues
    
    *   None
        

### Known Limitations With This Release

*   Client-to-server connections have limited reconnection capabilities.  Work-around (for potentially long network interruptions) can be to increase the configured reconnect timeout window.
*   Data inconsistency can occur from split-brain scenarios
*   Security features are not yet enabled

# Notes:
------

*   Terracotta BigMemory 4.x and Terracotta DB 10.x clients cannot be used simultaneously in the same application without using ClassLoader separation when initializing at least one of the clients.


