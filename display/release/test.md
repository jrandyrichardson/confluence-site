Product Information : Test Drive TMC  

1.  [Product Information](index.html)
2.  [Home](Home.html)
3.  [Gladstone ReadMe](Gladstone-ReadMe.html)

Product Information : Test Drive TMC
====================================

Created by Fiona OShea, last modified by Manish Devgan on Jun 25, 2012

To get a quick overview of how the new Terracotta Management Console works, you can start by running the console against a sample application available on github (see instructions below). Once you have successfully run TMC against the sample application, you may refer to the steps in "Using TMC with your own application" section below to run it against your existing application.

If you have any problems in getting TMC running with the sample application, please send an email to [pm@terracottatech.com](mailto:pm@terracottatech.com)

/\*<!\[CDATA\[\*/ div.rbtoc1633463967495 {padding: 0px;} div.rbtoc1633463967495 ul {list-style: disc;margin-left: 0px;} div.rbtoc1633463967495 li {margin-left: 0px;padding-left: 0px;} /\*\]\]>\*/

*   [Using TMC with Pounder Sample application](#TestDriveTMC-UsingTMCwithPounderSampleapplication)
*   [Using TMC with your own application](#TestDriveTMC-UsingTMCwithyourownapplication)

### Using TMC with Pounder Sample application

1.  Complete the sign-up process at: [http://terracotta.org/gladstonetechpreview](http://terracotta.org/gladstonetechpreview) and download Gladstone-Tech-Preview2.tar.gz
2.  Make sure the JAVA\_HOME variable is set & there is no ~/.tc/mgmt folder. Remove the folder if it exists.
3.  After you unzip and untar the archive  
    On unix, use the following command  
    \> tar -zxvf Gladstone-Tech-Preview2.tar.gz
4.  Execute the following commands to run tmc (make sure you are in the directory where you have unarchived Gladstone-Tech-Preview2.tar.gz)  
    \> ehcache-core-ee-2.6.0-SNAPSHOT/tmc/bin/start.sh
5.  Download the "standalone pounder" sample from github. The sample application has been pre-configured templates for different Heap and BigMemory sizes. You should pick a template based on the amount of free memory you have available for running the sample. Download Ehcache-Standalone-Pounder [https://github.com/downloads/sharrissf/Ehcache-Standalone-Pounder/ehcache-pounder-0.0.10-SNAPSHOT-distribution.tar.gz](https://github.com/downloads/sharrissf/Ehcache-Standalone-Pounder/ehcache-pounder-0.0.10-SNAPSHOT-distribution.tar.gz) in the same directory where you downloaded Gladstone-Tech-Preview2.tar.gz
6.  unzip and untar the archive,  
    \> tar -zxvf ehcache-pounder-0.0.10-SNAPSHOT-distribution.tar.gz
7.  Copy the Ehcache JAR from the Gladstone Tech Preview to the top-level Ehcache Pounder directory (make sure you are in the directory where you have unarchived Gladstone-Tech-Preview2.tar.gz)  
    \> cp ehcache-core-ee-2.6.0-SNAPSHOT/lib/ehcache-core-ee-2.6.0-SNAPSHOT.jar ../ehcache-pounder-0.0.10-SNAPSHOT/ehcache-core-ee.jar (Note: when copied into the ehcache-pounder directory, the ehcache-core library must be named 'ehcache-core-ee.jar'.)
8.  Copy the rest-agent JAR from the Gladstone Tech Preview to the top-level Ehcache Pounder directory  
    \> cp ehcache-core-ee-2.6.0-SNAPSHOT/lib/ehcache-ee-rest-agent-2.6.0-SNAPSHOT.jar ../ehcache-pounder-0.0.10-SNAPSHOT/ehcache-ee-rest-agent.jar (Note: when copied into the ehcache-pounder directory, the ehcache-ee-rest-agent library must be named 'ehcache-ee-rest-agent.jar'.)
9.  Copy the License Key to the Pounder Directory  
    The Pounder expects the trial license key to be in its top-level directory. Copy the the trial license to the Pounder directory:  
    \> cp terracotta-license.key ../ehcache-pounder-0.0.10-SNAPSHOT/.
10.  Choose a template based on the amount of memory on your machine. E.g. if you pick 1GB-BigMemory template  
    \> cd ehcache-pounder-0.0.10-SNAPSHOT/templates/1GB-BigMemory
11.  Edit config.yml file to turn on monitoring (update the value of monitoringEnabled to true)
    
     
    monitoringEnabled: true
    
12.  Update value for "rounds" to a high number (say 500). This is so that the pounder sample application is up for sufficient time for you to monitor it using TMC.
    
     
    rounds: 500
    
13.  Run the sample  
    \> chmod u+x run-pounder.\*  
    \> ./run-pounder.sh
14.  Now you are ready to test drive the TMC. Go to: [http://localhost:9889/tmc/](http://localhost:9889/tmc/)  
    (caveat: even though the messages may say that it is up, it may take a few more seconds before it is up. Retry if TMC is not available right away)
15.  click on "Local Connection" node in the left hand tree navigation panel to see various metrics.  
    (Note: You will see the metrics while the pounder is running so you may need to re-run your pounder sample)

### Using TMC with your own application

(Follow the steps in ehcache-core-ee-2.6.0-SNAPSHOT/tmc/README.txt in the directory where you have exploded the Gladstone-Tech-Preview.tar.gz archive)

At a high-level, the steps will include:

1.  Setting the classpath to make sure the right dependencies are set. If you are using maven, refer to the pom snippet in the README.txt under ehcache-core-ee-2.6.0-SNAPSHOT/tmc in the directory where you have exploded the Gladstone-Tech-Preview2.tar.gz archive. If you are not using maven, follow steps to download the dependent jars.
2.  Update terracotta-license.key with the license key file packaged in Gladstone-Tech-Preview2.tar.gz archive

Make sure you send your feedback and comments to [pm@terracottatech.com](mailto:pm@terracottatech.com)

Document generated by Confluence on Oct 05, 2021 15:59

[Atlassian](http://www.atlassian.com/)