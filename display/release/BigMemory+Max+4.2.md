---
title:  BigMemory Max 4.2  
---

BigMemory Max 4.2.1 is the latest release. It includes Ehcache 2.9.1 and Quartz 2.2.1.

**/\*<!\[CDATA\[\*/ div.rbtoc1633463967205 {padding: 0px;} div.rbtoc1633463967205 ul {list-style: disc;margin-left: 0px;} div.rbtoc1633463967205 li {margin-left: 0px;padding-left: 0px;} /\*\]\]>\*/**

**

* TOC
{:toc}

**

#### **New Features  
**

BigMemory Max 4.2 introduces following new capabilities:

1.  **BigMemory Hybrid** – Extensive, real-time auto-tuning for maximizing BigMemory Hybrid performance.
2.  **Zero Down-Time Upgrades** – Maintenance version upgrades can now be accomplished with zero down-time.
3.  **WAN Replication** – Support for even higher data limits and greater fault tolerance. REST APIs provided to monitor deployment.
4.  **Management & Monitoring** – Improved efficiency of management and monitoring to support larger numbers of clients connected to cluster.

#### Configuration Changes

*   New port dedicated to TMC - A new section, [/tc:tc-config/servers/server/management-port](http://terracotta-org.terracotta.eur.ad.sag/generated/4.2.0/html/bmm-all/BigMemory_Max_Documentation_Set/re-tconfig_servers_parameters_11#wwconnect_header "/tc:tc-config/servers/server/management-port"), has been added to the Terracotta configuration file. This section specifies the port used by the Terracotta Management Console (TMC). The default is 9540. (Prior to 4.2, the TMC used the tsa-port and tsa-group-port.)
*   JMX port disabled - In the Terracotta configuration file, the section [/tc:tc-config/servers/server/jmx-port](http://terracotta-org.terracotta.eur.ad.sag/generated/4.2.0/html/bmm-all/BigMemory_Max_Documentation_Set/re-tconfig_servers_parameters_9#wwconnect_header "/tc:tc-config/servers/server/jmx-port") is now disabled by default. To enable it, change the value of "jmx-enabled" from false to true in the Terracotta configuration file.

#### Summary of Changes in 4.2.1

##### Resolved Issues

*   4093 - TMC does not start up if bigmemory root directory contains any spaces.
*   4126 - TMC LDAP configuration page throws null pointer exception when certain fields are left empty.
*   4588 - Sync fail fast works on per-master basis versus per-replica basis.
*   4773 - TMC: Administration - Off-line data tab is not functional.
*   4781 - Fixed inconsistencies in conflict count statistics.
*   4941 - Resolved issue where Terracotta Server would not start when using IBM JDK 1.7.0 SR7.
*   4953 - TMC: off-line data cache column flickers.
*   4966 - WAN JMX randomly displays too high value for Master Orchestrator TPS.
*   4987 - Unable to authenticate using self-signed certificate in 4.2.0.
*   5011 - Marking all events as read could lead to socket timeout error.
*   5045 - TMC: 500 Internal Server Error appears when trying to READ and Unread Events.
*   5092 - TMC - New name is not saved in the setting panel when renaming connection group.
*   5093 - TMC: Unable to delete group name after deleting connection link name.
*   5100 - TMC: When TSA cluster is connected with 440 clients, it takes a while to show all 440 caches in the management panel.
*   5119 - TMC: When App Data tab is clicked from Landing Overview page for cluster connection, it does not navigate to Application Data | Overview.
*   5121 - TMC: When editing the cluster connection timeouts from the setting panel, after saving the new changes, cluster connection goes to the loading status in the Landing overview page.
*   5156 - Enabling periodic DGC (non-default) with ExpandingBitSetObjectIDSet (default) can lead to a server crash with NPE or StackOverflowException.

##### Known Issues  

*   4743 - Additional TSA or orchestrator processes fail to start from the same machine when JMS port is configured by environment variables.
*   5080 - TMC: When trying to disable single cache, not seeing the change with 500 plus clients.
*   5081 - TMC: When disabling caches, it takes a long time to disable all 500 caches simultaneously.

#### Known Issues in 4.2.0

*   4093 - TMC does not start up if bigmemory root directory contains any spaces.
*   4126 - TMC LDAP configuration page throws null pointer exception when certain fields are left empty.
*   4588 - Sync fail fast works on per-master basis versus per-replica basis.
*   4743 - Additional TSA or orchestrator processes fail to start from the same machine when JMS port is configured by environment variables.  
    
*   4773 - TMC: Administration - Off-line data tab is not functional.
*   4953 - TMC: off-line data cache column flickers.
*   4966 - WAN JMX randomly displays too high value for Master Orchestrator TPS.
*   4987 - Unable to authenticate using self-signed certificate in 4.2.0.
*   5011 - Marking all events as read could lead to socket timeout error.
*   5045 - TMC: 500 Internal Server Error appears when trying to READ and Unread Events.
*   5080 - TMC: When trying to disable single cache, not seeing the change with 500 plus clients.
*   5081 - TMC: When disabling caches, it takes a long time to disable all 500 caches simultaneously.
*   5092 - TMC - New name is not saved in the setting panel when renaming connection group.
*   5093 - TMC: Unable to delete group name after deleting connection link name.
*   5100 - TMC: When TSA cluster is connected with 440 clients, it takes a while to show all 440 caches in the management panel.
*   5119 - TMC: When App Data tab is clicked from Landing Overview page for cluster connection, it does not navigate to Application Data | Overview.
*   5121 - TMC: When editing the cluster connection timeouts from the setting panel, after saving the new changes, cluster connection goes to the loading status in the Landing overview page.
*   5156 - Enabling periodic DGC (non-default) with ExpandingBitSetObjectIDSet (default) can lead to a server crash with NPE or StackOverflowException.
    
    *   Resolution
        
        *   Either disable periodic DGC if possible, or set objectID set implementation to BitSetObjectIDSet by adding the following tc.property to your tc-config.xml:  
            al2.objectmanager.oidset.type=BITSET\_BASED\_SET
            
              
              
            

Document generated by Confluence on Oct 05, 2021 15:59

[Atlassian](http://www.atlassian.com/)
