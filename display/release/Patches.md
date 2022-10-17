---
title:  FAQ: Terracotta Patch Process
lang: en
layout: page
keywords:
space: current
sidebar: lb2_sidebar
permalink: /display/release/Patches
summary:
---

Terracotta Software Patches
===========================

* TOC
{:toc}

Introduction
------------

The Terracotta patch process is a path for installing fixes to known problems between point releases. Terracotta patches are made available for ee (Enterprise Edition) kits for customers running [Terracotta commercial products](http://www.terracotta.org/products) only.

The patch process is designed to avoid disruptions to production centers by:

*   Providing a zero-downtime option in a multi-server setup  
    ... use a rolling upgrade to avoid cluster downtime.
*   Not changing the Terracotta version number  
    ... check the patch into a code management system _without_ triggering change-control issues such as acceptance tests.
*   Offering easy install and backout options  
    ... simply unzip the patch file to install.
*   Not impacting your existing configuration  
    ... continue using the same Terracotta configuration files already optimized for your cluster.
*   Remaining visible via patch-level version  
    ... identify the patch level alongside the Terracotta version.

If a patch is required for your version of Terracotta, you will be notified and provided with a patch file.

About Patches
-------------

A patch is a compressed file with the following filename format:

terracotta-<i>tc-version></i>-patch-<i>patch-level</i>.tar.gz 

<i>tc-version></i> corresponds to the version of Terracotta installed in your cluster. 
<i>patch-level</i> refers to the version of the patch.

For example, if you are running Terracotta 2.6.3, a level-1 patch would have the following filename:

terracotta-2.6.3-patch-1.tar.gz

Preparing for a Patch Installation
----------------------------------

Before attempting to install a patch, confirm the following:

*   All of the Terracotta servers and clients in the target cluster are running the same version of Terracotta.
*   The patch is intended for the version of Terracotta being run in the target cluster.

Installing Patches With No Downtime
-----------------------------------

In a cluster with multiple Terracotta servers, you can avoid cluster downtime by installing patches using a rolling upgrade. A rolling upgrade means installing the patch on nodes that are individually shut down, patched, and restarted. In a cluster with only one Terracotta server, downtime is unavoidable during a patch installation.

At least two Terracotta servers should be used in production systems to avoid downtime during patch installations and reduce the risk of cluster-wide failure due to network and hardware problems.

For example, to implement a rolling upgrade in a cluster with an active Terracotta server, a passive (backup) Terracotta server, and any number of Terracotta clients, follow these steps:

1.  Confirm that all prerequisites have been met.  
    See [Preparing for a Patch Installation](#Patches-prepare).
2.  Shut down the passive Terracotta server using the [server Shutdown button](http://www.terracotta.org/documentation/dev-console) or the Terracotta [stop-tc-server script](http://www.terracotta.org/documentation/tools-catalog).
3.  Unzip the patch file in the passive Terracotta server's installation (root) directory.  
    On a UNIX/Linux machine, use the tar command as shown:
    
    tar zxf terracotta-2.6.3-patch-1.tar.gz
    
    On a Microsoft Windows machine, double-click the zip file.
4.  Restart the passive Terracotta server.
5.  Confirm that the passive server has synced with the active server.  
    You can use the [Terracotta Administrator Console](http://www.terracotta.org/documentation/dev-console) to monitor server status.
6.  Confirm that the patch was installed by running the [Terracotta version script](http://www.terracotta.org/documentation/tools-catalog).
7.  Shut down the active Terracotta server using the [server Shutdown button](http://www.terracotta.org/documentation/dev-console) or the Terracotta [stop-tc-server script](http://www.terracotta.org/documentation/tools-catalog).  
    The cluster fails over to the passive Terracotta server, which becomes the active server.
8.  Install the patch file on the shut-down Terracotta server.  
    Use the same procedure as above, including the confirmation step.
9.  Start the shut-down Terracotta server.  
    The formerly active server becomes the passive server.
10.  Confirm that the newly passive server has synced with the newly active server.  
    You can use the [Terracotta Administrator Console](http://www.terracotta.org/documentation/dev-console) to monitor server status.
11.  Shut down a Terracotta client using the client [Terracotta Administrator Console](http://www.terracotta.org/documentation/dev-console) or by stopping your application.
12.  Install the patch file on the shut-down Terracotta client.  
    Use the same procedure as above, including the confirmation step.
13.  Repeat the patch installation with each Terracotta client, one at a time.

Locating the Installed Patch Level
----------------------------------

The patch level of a Terracotta server or client can be found in the same ways as its version. Terracotta reports its version with a message similar to the following:

2008-06-06 12:23:42,295 INFO - Terracotta 2.6.0, as of 20080520-120516 (Revision 8595 by cruise@rh4mo0 from 2.6.0)

If a patch is installed, the patch level is reported following the version:

2008-06-06 12:23:42,295 INFO - Terracotta 2.6.0, as of 20080520-120516 (Revision 8595 by cruise@rh4mo0 from 2.6.0)
2008-06-06 12:23:42,295 INFO - Patch Level P5, as of 20080710-120516 (Revision 9324 by cruise@rh4mo0 from 2.6.0)

You can find the Terracotta version and patch level in any of the following ways:

*   Using the Terracotta version tool (`version.sh` or `version.bat`).
*   Viewing the log messages echoed to standard output at startup.
*   Viewing the Terracotta server log or Terracotta client log.
*   Viewing the server panel in the Terracotta Administrator Console.

Rolling Back a Patch Installation
---------------------------------

To back out of a patch installation, perform a clean installation of the version of Terracotta running before the patch was installed. You must do the clean installation on every node that received the patch.


