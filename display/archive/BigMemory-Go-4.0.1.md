---
title:  BigMemory Go 4.0.1  
lang: en
layout: page
keywords:
space: archive
sidebar: lb2_sidebar
permalink: /display/archive/BigMemory+Go+4.0.1.html
summary:
---

The 4.0.1 release primarily is a GA release of BigMemory Go, fixing the issues below.

* * *

#### BigMemory Go 4.0.1 Resolved Issues

*   DEV-9180 - Setting maxEntriesInCache to -1 dynamically doesn't work
*   DEV-8953 - Fails to start up if logs directory removed 
*   DEV-9046 - Unsecured REST agents accept TMS connection with secure parameters
*   DEV-9075 - Intermittent issue: "There are no CacheManagers" message shown in TMC's Application Tab
*   DEV-9216 - Issue configuring ini-based security; Workaround: create a dummy keychain file.  e.g. on unix execute "touch ~/.tc/mgmt/keychain", prior to restarting the TMS after enabling security


