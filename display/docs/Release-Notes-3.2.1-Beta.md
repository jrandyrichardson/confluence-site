---
title: "Release Notes 3.2.1 Beta"
lang: en
layout: page
keywords: LoopBack
tags:
sidebar: lb2_sidebar
permalink: /display/docs/Release-Notes-3.2.1-Beta
summary:
---

# Release Notes for Terracotta Darwin Beta

## Getting Started

1\. Download the beta build. If you haven't already, you will need to sign-up to get the download location. Sign-up here: [http://www.terracotta.org/beta/darwin](http://www.terracotta.org/beta/darwin)

2\. Review the new beta Terracotta 3.2.1 and Ehcache 2.0 documentation. [http://www.terracotta.org/documentation/betadocs/](http://www.terracotta.org/documentation/betadocs/) [http://ehcache.org/documentation/index.html](http://ehcache.org/documentation/index.html)

3\. Download and try the accompanying [Examinator sample app](http://www.terracotta.org/dl/oss-download-destination?name=examinator-1.3.1-SNAPSHOT.tar.gz&bucket=TCreleases&file=examinator-1.3.1-SNAPSHOT.tar.gz), which has been updated to use all of the new components. [Review the source here](http://www.terracotta.org/dl/oss-download-destination?name=examinator-sources.jar&bucket=TCreleases&file=examinator-sources.jar).

## New Features

1\. Ehcache as a Hibernate 2nd Level Cache.  
Review the [Terracotta docs](http://www.terracotta.org/documentation/betadocs/beta-documentation-4.html#410647608_pgfId-1044971) and the [Ehcache docs](http://ehcache.org/documentation/hibernate.html) on this topic.  
Ehcache 2.0 now integrates support for fully coherent distributed caching as a Hibernate Second-Level Cache, as well as for caches accessed directly through the Ehcache API. One pair of jars covers both. Switching between local and distributed implementations is done with a simple config change. This replaces the previous terracotta-hibernate-cache and terracotta-hibernate-agent jars. No java agent is needed. These new jars also have no specific JDK or container restrictions. Support for the new Hibernate 3.3 SPI has also been added & using this (net.sf.ehcache.hibernate.EhCacheRegionFactory rather than net.sf.ehcache.hibernate.EhCacheProvider) is recommended for Hibernate 3.3.

2\. Write-behind in Ehcache.  
[Review the docs on this topic](http://ehcache.org/documentation/write_through_caching.html).

3\. JTA support in Ehcache.  
[Review the docs on this topic](http://www.terracotta.org/documentation/betadocs/beta-documentation-3.html#50638876_pgfId-1233696).  
This is designed to work with any JTA-compliant Transaction manager. Our pre-beta testing was done with JBossTM, Bitronix and Atomikos.

4\. Optimized bulk load in Ehcache.  
[Review the docs on this topic](http://ehcache.org/documentation/bulk_loading.html).

5\. Management. Dynamic config for Ehcache - for example TTI and TTL for caches can be changed on the fly via the console or JMX. Check out the updated developer console to see this feature.

6\. Express Web Sessions Clustering. Now Web Sessions Clustering is supported in Express mode - i.e. without needing a boot jar or custom annotations. This new approach is designed to work with frameworks that are developed for serialization-based clustering and not to require any Terracotta-specific configuration. We recommend you review the [doc section on the topic](http://www.terracotta.org/documentation/betadocs/beta-documentation-8.html#410982760_pgfId-1010089).  
Then try out the demo samples included in the kit by running the start-demo.sh script in the sessions/samples directory. This will run up two Jetty instances which can be accessed via: [http://localhost:9081/Cart](http://localhost:9081/Cart) [http://localhost:9081/DepartmentTaskList](http://localhost:9081/DepartmentTaskList)  
NOTE: The 1st beta build includes support for Tomcat, Jetty, JBoss and Weblogic. Glassfish v3 session-clustering support didn't make it into this first beta and will be added in due course.

7\. OSGi Support  
[Review the docs on this topic](http://www.terracotta.org/documentation/betadocs/beta-documentation-3.html#50638876_pgfId-1233696).

### Summary of Changes in Ehcache 2.0 and Terracotta 3.2.1

##### Expected Updates and Scheduled Bug Fixes

in the 2.0 [EHC Jira Project](http://jira.terracotta.org/jira/browse/EHC?report=com.atlassian.jira.plugin.system.project:roadmap-panel)  
in the 3.2.1 [CDV Jira Project](http://jira.terracotta.org/jira/browse/CDV?report=com.atlassian.jira.plugin.system.project:roadmap-panell)

##### Additional Improvements

The Terracotta 3.2.1 Beta Kit includes Quartz 1.7.1

##### Known Open Issues

Note: The beta is focused on 'Express' usage, rather than 'Custom' (DSO) usage of the Terracotta Platform. Custom DSO users who require specific TIMs compatible with the beta and may get unpredictable results due the fact that the beta is built with SNAPSHOT TIMs. Please contact us with details if you want to try any specific component in DSO mode.

In the first beta build, the sample ehcache.xml file in the ehcache directory contains a couple of minor errors:  
[EHC-614](https://jira.terracotta.org/jira/browse/EHC-614) ehcache.xml terracottaConfig points to wrong url in tc 3.2.1 beta  
This can be fixed by changing 'locahost' to 'localhost' in the <terracottaConfig> tag as follows:  
<terracottaConfig url="locahost:9510"/> should be <terracottaConfig url="localhost:9510"/>

[EHC-615](https://jira.terracotta.org/jira/browse/EHC-615) transactionManagerLookup instantiation fails when properties are specified  
Quick workaround is to remove this line:  
<transactionManagerLookup class="net.sf.ehcache.transaction.manager.DefaultTransactionManagerLookup" properties="" propertySeparator=":"/>

[CDV-1453](https://jira.terracotta.org/jira/browse/CDV-1453) interleaving txn not support in EhcacheXAResource when the TM is Atomikos

[FORGE-582](https://jira.terracotta.org/jira/browse/FORGE-582) With cluster events enabled terracotta clustered cache, adding an element to a cache with tti/ttl 30 secs and checking the element after 60 secs. This triggers evicted event, then expired event.

[FORGE-583](http://jira.terracotta.org/jira/browse/FORGE-583) Exception while starting the transaction in weblogic10 container. The error message seens is "Attempt to start an XA Transaction inside a Resource Adapter's Local Transaction is illegal"

*   Workaround: In this case the parallel completion of the XA transactions must be suppressed.  
    (see the XML schema: [http://www.bea.com/ns/weblogic/920/domain.xsd](http://www.bea.com/ns/weblogic/920/domain.xsd))  
    In the domain configuration.xml in the <jtaType> element

    ```
    need to set following property in weblogic domain config.xml 

    <jta> 
        ... 
        <checkpoint-interval-seconds>300</checkpoint-interval-seconds> 
        <parallel-xa-enabled>false</parallel-xa-enabled> 
        ... 
      </jta> 

    add the following line to ehcache.xml 
     <transactionManagerLookup 
                    class="net.sf.ehcache.transaction.manager.DefaultTransactionManagerLookup" 
                    properties="jndiName=javax.transaction.UserTransaction" propertySeparator=";" />
    ```

[CDV-1455](http://jira.terracotta.org/jira/browse/CDV-1455) Delays in return of setting Coherent to true in Developer Console

See [Jira](http://jira.terracotta.org/jira/secure/IssueNavigator.jspa?reset=true&mode=hide&sorter/order=DESC&sorter/field=priority&resolution=-1&pid=10280&fixfor=10813)

## Contact

Please email any questions you have regarding the beta to mike <at> terracotta.org

