---
title:  Ehcache-monitor Release Notes  
lang: en
layout: page
keywords:
tags:
sidebar: lb2_sidebar
permalink: /display/release/Ehcache+monitor+Release+Notes
summary:
---

Ehcache-monitor is EOL. It is not supported for later versions of BigMemory or Ehcache.


* TOC
{:toc}

### Changes in Ehcache-monitor 1.0.3

##### Bug Fix

*   6061 - Fix to licensing file

* * *

### Changes in Ehcache-monitor 1.0.2

##### New Features

*   Added Support for BigMemory

* * *

##### Bug Fixes

See [Jira](https://jira.terracotta.org/jira/browse/EHCMON/fixforversion/10942) for bug fix list

* * *

### Known Open Issues

*   [EHC-761](https://jira.terracotta.org/jira/browse/EHC-761) error in Firebug when reloading the store attached to a chart in a tab that is not visible
    *   Workaround: Reload the chart

*   Ehcache Monitor does not connect to probe without Internet connection.
    *   Workaround: Ensure that the `/etc/hosts` file gives the host's true IP addresss (not 127.0.0.1)
    *   alternately: remove a -J ...jetty.xml parameter from the startup.bat script


