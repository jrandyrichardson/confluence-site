---
title: "Get The Snapshot Visualization Tool"
lang: en
layout: page
keywords: LoopBack
tags:
sidebar: lb2_sidebar
permalink: /display/docs/Get+The+Snapshot+Visualization+Tool
summary:
---



<div class="confluence-information-macro confluence-information-macro-information">

About Terracotta Documentation

<div class="confluence-information-macro-body">

This documentation is about Terracotta DSO, an advanced distributed-computing technology aimed at meeting special clustering requirements.

Terracotta products without the overhead and complexity of DSO meet the needs of almost all use cases and clustering requirements. 
To learn how to migrate from Terracotta DSO to standard Terracotta products, see [Migrating From Terracotta DSO](Migrating+From+Terracotta+DSO). 
To find documentation on non-DSO (standard) Terracotta products, see [Terracotta Documentation](http://terracotta.org/documentation). 
Terracotta release information, such as release notes and platform compatibility, is found in [Product Information](/display/release/Home).

</div>

</div>







# Get the Snapshot Visualization Tool

<div class="confluence-information-macro confluence-information-macro-note">

<div class="confluence-information-macro-body">

The Snapshot Visualization Tool is being phased out and may not work correctly with more recent versions of Terracotta clusters.

</div>

</div>

The Snapshot Visualization Tool allows you to see the snapshots you've recorded. You can see all of the stats in a single page, including:

*   CPU
*   Memory Usage
*   Txns
*   Thread Dumps
*   Disk Activity
*   Terracotta Statistics (SEDA Queue Depths, L1 L2 Fault Flush etc)
*   and much more!

* * *

## Installation Instructions

### Terracotta 2.7+ Users

*   For the standard distribution, execute:  
    `  TC_HOME/bin/tim-get.sh install tim-svt` (.bat for Windows)
*   For the DSO Eclipse plug-in, use the _Terracotta|Update modules..._ menu.

The Developer Console will automatically detect and launch the SVT when you press the "View" statistics button. Also, you can select _Tools|Show SVT..._ from the main menu.

### Terracotta 2.6 Users

*   Download the [svt-1.0.4.jar](/download/attachments/19857466/svt-1.0.4.jar)
*   Copy into your TC_HOME/lib directory
*   _Restart_ the Admin Console