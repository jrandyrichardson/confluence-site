---
title:  Release Notes Terracotta 3.4 Ehcache 2.3 Beta  
lang: en
layout: page
keywords:
tags:
sidebar: lb2_sidebar
permalink: /display/release/Release+Notes+Terracotta+3.4+Ehcache+2.3+Beta.html
summary:
---

Release Notes for BigMemory Beta
================================

About BigMemory
---------------

BigMemory is an add-on product for Enterprise Ehcache and for the Terracotta Server Array. It provides an off-heap cache that is not subject to Garbage Collection (GC). By avoiding performance-killing GC pauses, BigMemory allows Java applications to use as much memory as required. It works everywhere Ehcache works — for stand-alone and distributed caches — with no changes to application code and no special JVM or operating system requirements. It is available in two forms:

1\. BigMemory for Enterprise Ehcache (standalone)  
2\. BigMemory for the Terracotta Server Array (L2)

The BigMemory for Enterprise Ehcache (standalone) beta is designed for all users of Ehcache. This is the beta build most users should try.  
(The BigMemory for the Terracotta Server Array (L2) beta is designed for users already using Terracotta and the Terracotta Server Array).

Getting Started
---------------

1\. If you haven't already, please sign up for the Beta here [http://www.terracotta.org/bigmemory](http://www.terracotta.org/bigmemory). Registered beta users will receive instructions on how to download the beta.

2\. Download the beta build

*   For BigMemory for Enterprise Ehcache (standalone) use: ehcache-core-ee-2.3-BETA-distribution.tar.gz
*   For BigMemory for the Terracotta Server Array (L2) use: terracotta-ee-3.4-BETA.tar.gz

Additionally, the accompanying trial license key "terracotta-license.key" should be downloaded and installed along with the software.

3\. Review the new beta documentation:

*   For Enterprise Ehcache (standalone): [http://ehcache.org/documentation/offheap\_store](http://ehcache.org/documentation/offheap_store)
*   For Terracotta Server Array: [BigMemory+for+the+Terracotta+Server+Array+-+FAQ](BigMemory+for+the+Terracotta+Server+Array+-+FAQ)

Getting Started with BigMemory for Enterprise Ehcache (standalone)
------------------------------------------------------------------

STEP 1 Unpack / Install the ehcache-core-ee-2.3-BETA-distribution kit

STEP 2 Configure the cache.

Configuring an Ehcache instance for off-heap caching can be done either through XML in the ehcache.xml file or programatically.  
For example, the following XML configuration creates an off-heap cache with an on-heap area with a capacity of 10,000 elements which overflows to a 1-gigabyte off-heap area.

<?xml version="1.0" encoding="UTF-8"?>
<ehcache updateCheck="false" monitoring="off" dynamicConfig="false">
        <defaultCache maxElementsInMemory="10000" eternal="true" memoryStoreEvictionPolicy="LRU" statistics="false" />
        <cache name="offheap-cache" maxElementsInMemory="10000" eternal="true" memoryStoreEvictionPolicy="LRU" overflowToOffHeap="true" maxMemoryOffHeap="1G"/> 
</ehcache>

STEP 3 Configure Java to use the off-heap store.

In order to use these configurations you must then use the ehcache-core-ee jar in lieu of the regular ehcache-core jar in your classpath, and modify your JVM command-line to increase the amount of direct memory allowed by the JVM.

java -XX:MaxDirectMemorySize=2G -cp "ehcache-core-ee-2.3.BETA.jar:slf4j-api-1.5.11.jar:slf4j-jdk14-1.5.11.jar"

STEP 4 Install and use the "terracotta-license.key" license file that is needed for the product.

The license key file specifies for the licensed JVM, the total amount of off-heap storage that can be used JVM-wide across all cache managers running in that JVM. The easiest way to pass the license is to include the terracotta-license.key file in your classpath (in the same way as you can include the ehcache.xml configuration in your classpath)

STEP 5 - Run your app and observe the performance (throughput and latency) with different configurations.

Notes:  
1\. Don't expect the results on low powered, low memory machines to make a lot of sense. For example, we wouldn't recommend doing performance testing on a laptop with your regular workload & apps, anti-virus software, etc running at the same time. One simple way to get access to a machine with lots of memory for testing is to use Amazon EC2, which provides on-demand instances with up to 68GB of memory.  
2\. Your first impression will likely be that the latency for simple cache operations for off-heap data is higher than for on-heap data - this is expected for small data sizes. See the documentation for a detailed description of how to configure optimally.

Getting Started with BigMemory for the Terracotta Server Array (L2)
-------------------------------------------------------------------

STEP 1 - Unpack / Install the terracotta-ee-3.4-BETA kit

STEP 2 - Install the trial license key

Copy the trial terracotta-license.key file to the root folder of the beta Terracotta EE kit you are using. If you store the key file in a different location, you can specify it on the Java command line with:

\-Dorg.terracotta.license.path=/path/to/key

STEP 3 - Enable off-heap in the Terracotta configuration

Add the following configuration to the to the target server's <server> block in the tc-config.xml it's using:

<dso>
...
  <persistence>
  ...
    <offheap>
      <enabled>true</enabled>
      <maxDataSize>10g</maxDataSize>
    </offheap>
  ...
  </persistence>
...
</dso>

STEP 4 - At startup, allocate enough direct memory space to accommodate the off-heap memory you configured.

For example, to create 10 Gigabytes of direct memory space, add the following Java option at startup:

\-XX:MaxDirectMemorySize=10g

You can, for example, add this option to the appropriate line in `${TERRACOTTA_HOME}/bin/start-tc-server.sh` or `%TERRACOTTA_HOME%\bin\start-tc-server.bat`.

### Summary of Changes

##### Updated release of Ehcache-monitor

Users of Ehcache-monitor ([http://ehcache.org/documentation/monitor](http://ehcache.org/documentation/monitor)) should download the updated build ehcache-monitor-kit-1.0.2-BETA.tar.gz along with the ehcache-core-ee-2.3-BETA-distribution.tar.gz build. The new version reports additional statistics for the off-heap store.

##### Expected Updates and Scheduled Bug Fixes

in the 2.3 [EHC Jira Project](https://jira.terracotta.org/jira/browse/EHC#selectedTab=com.atlassian.jira.plugin.system.project%3Aroadmap-panel)  
in the 3.4 [CDV Jira Project](https://jira.terracotta.org/jira/browse/CDV#selectedTab=com.atlassian.jira.plugin.system.project%3Aroadmap-panel)

##### Known Open Issues in Beta

*   There are known issues with Memory sizing in 32bit Operating Systems. We recommend that you only use 64bit Operating Systems when using this Beta.
*   For Distributed Ehcache, the first release does not support BigMemory on client nodes (L1s), but rather only on Terracotta Server Array (L2s).
*   On Firefox and Chrome the Ehcache Monitor charts may go blank. [http://www.sencha.com/forum/showthread.php?78788-OPEN-197-3.0.0-svn-5208-this.swf.setDataprovider-is-not-a-function](http://www.sencha.com/forum/showthread.php?78788-OPEN-197-3.0.0-svn-5208-this.swf.setDataprovider-is-not-a-function)
    *   Workaround: refresh browser
*   [EHC-781](https://jira.terracotta.org/jira/browse/EHC-781) Large caches get slow if onHeap cache set to a low number.
    *   Workaround: make the minimum onheap cache size something like 1024
*   The Terracotta Developer Console will not show OffHeap statistics in the Beta. These statistics are available via JMX
*   Terracotta-ee-3.4-BETA kit file INSTALL.txt refers to the license file as product.key, the correct name is terracotta-license.key
*   Incorrect version listed in ehache CHANGELOG.txt in the Terracotta 3.4 Beta kit. Refers to 2.2.0, should indicate 2.3

Please email any questions you have regarding the beta to pm <at> terracotta.org

Document generated by Confluence on Oct 05, 2021 15:59

[Atlassian](http://www.atlassian.com/)
