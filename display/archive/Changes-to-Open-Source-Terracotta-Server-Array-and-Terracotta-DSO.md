---
title:  Changes to Open-Source Terracotta Server Array and Terracotta DSO (FAQ)  
lang: en
layout: page
keywords:
space: archive
sidebar: lb2_sidebar
permalink: /display/release/Changes+to+Open-Source+Terracotta+Server+Array+and+Terracotta+DSO+(FAQ)
summary:
---

**On March 4, 2013, Terracotta released BigMemory 4.0, a major upgrade to the BigMemory in-memory data management platform.  With this release, Terracotta discontinued support for Terracotta DSO and the open-source version of Terracotta Server Array. This page includes answers to frequently asked questions about these changes.**



* TOC
{:toc}

**WHAT'S HAPPENING**
====================

**What's happening with the open-source Terracotta Server Array?**
------------------------------------------------------------------

As of Terracotta’s March 4, 2013 release of BigMemory 4.0, Terracotta will no longer issue updates to the open-source Terracotta Server Array. Terracotta will continue to provide new open source releases of Ehcache and Quartz, but these will no longer include the open-source Terracotta Server Array.

What's happening with Terracotta DSO?
-------------------------------------

As of Terracotta’s March 4, 2013, release of BigMemory 4.0 and Ehcache 2.7, DSO features will no longer be included in Terracotta products. Terracotta will continue to support DSO for commercial Terracotta customers under standard terms until December 31,  2013. Terracotta is taking this step because BigMemory and Ehcache offer more functionality with far less complexity than DSO. In particular, BigMemory Max 4.0 provides a distributed in-memory management solution for extremely low, predictable latency at any scale. New BigMemory Max capabilities include Fast Restartable Store, Terracotta Management Console, faster search, and much more. BigMemory also now comes in free versions. Please visit [http://terracotta.org/products](http://terracotta.org/products) to explore and start using BigMemory.  
  

DSO QUESTIONS
=============

What are my options if I'm currently using DSO?
-----------------------------------------------

If you wish to move away from DSO, Terracotta has assembled a migration plan to help [DSO Migration Plan](/download/attachments/37129634/DSOMigrationPlan-280213-1120-26.pdf) (.pdf)

Will my applications that use DSO work on Java 7?
-------------------------------------------------

No. There is no support for Java 7 in DSO, and Terracotta will not be providing future updates. Please note that Oracle will end-of-life Java 6 (JDK 1.6) as of February 2013. If you plan to upgrade to Java 7, you can migrate away from DSO by following the migration plan above.

Can I keep using DSO with my existing applications?
---------------------------------------------------

Yes. However, you will not be able to upgrade to Java 7 or use the latest versions of Terracotta products.

How can I get help migrating from DSO?
--------------------------------------

 Please email [sales@terracottatech.com](mailto:sales@terracottatech.com).

OPEN-SOURCE TERRACOTTA SERVER ARRAY QUESTIONS
=============================================

What do I do if I want distributed caching?
-------------------------------------------

For those who use the open-source Terracotta Server Array for distributed in-memory management and caching, Terracotta recommends to try the extended 90 day trial version of BigMemory Max, which offers all of the functionality of the open-source Terracotta Server Array and much more. BigMemory Max uses the same Ehcache API for get/put, and includes added functionality for fast search, advanced monitoring and management of in-memory data, and fast restartable stores. To explore and download the trial version of BigMemory Max, visit [http://terracotta.org/products/bigmemorymax](http://terracotta.org/products/bigmemorymax).

Will Terracotta's open-source software kits continue to include Terracotta Server Array?
----------------------------------------------------------------------------------------

Starting with the release of BigMemory 4.0, the open-source Terracotta Server Array will no longer be included with the latest open source versions. Terracotta will continue to provide new open source releases of Ehcache and Quartz, but these will no longer include the open-source Terracotta Server Array.

Can I still get the latest (version 3.7) version of the open-source Terracotta Server Array?
--------------------------------------------------------------------------------------------

 Yes. You can download the latest open-source version for Terracotta (3.7.x) at [http://terracotta.org/downloads/open-source/catalog](http://terracotta.org/downloads/open-source/catalog).   Terracotta Server Array will continue to be available for open source users of 3.7 (and earlier) Terracotta versions  
  

Attachments:
------------

![Bullet](images/icons/bullet_blue.gif) [DSOMigrationPlan-280213-1120-26.pdf](/download/attachments/37129634/DSOMigrationPlan-280213-1120-26.pdf) (application/pdf)  


