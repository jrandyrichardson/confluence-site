Product Information : Building Terracotta Software  

1.  [Product Information](index.html)
2.  [Home](Home.html)

Product Information : Building Terracotta Software
==================================================

Created by Unknown User (ilevy), last modified on Sep 12, 2011

Building Versions 3.6.x and Later

Beginning with Terracotta version 3.6.x, Terracotta software is built using Apache Maven. For detailed information on building Terracotta software, see the README included in the Terracotta project you check out.

For Terracotta versions **3.5.x and earlier**, see the following documentation.

/\*<!\[CDATA\[\*/ div.rbtoc1633463967374 {padding: 0px;} div.rbtoc1633463967374 ul {list-style: disc;margin-left: 0px;} div.rbtoc1633463967374 li {margin-left: 0px;padding-left: 0px;} /\*\]\]>\*/

*   [Building Terracotta Software](#BuildingTerracottaSoftware-BuildingTerracottaSoftware)
*   [Requirements](#BuildingTerracottaSoftware-Requirements)
*   [Building From Source](#BuildingTerracottaSoftware-BuildingFromSource)
    *   [Examples](#BuildingTerracottaSoftware-Examples)
*   [Running Tests](#BuildingTerracottaSoftware-RunningTests)
*   [tcbuild Targets](#BuildingTerracottaSoftware-tcbuildTargets)
    *   [Syntax](#BuildingTerracottaSoftware-Syntax)
    *   [Targets](#BuildingTerracottaSoftware-Targets)
        *   [Basics](#BuildingTerracottaSoftware-Basics)
        *   [Testing](#BuildingTerracottaSoftware-Testing)
        *   [Testing in Eclipse or Other Tools](#BuildingTerracottaSoftware-TestinginEclipseorOtherTools)
        *   [Running Servers, Classes, etc.](#BuildingTerracottaSoftware-RunningServers,Classes,etc.)
        *   [Miscellaneous](#BuildingTerracottaSoftware-Miscellaneous)
*   [Source Modules](#BuildingTerracottaSoftware-SourceModules)
    *   [Subtrees](#BuildingTerracottaSoftware-Subtrees)
*   [Configuring JDK Versions](#BuildingTerracottaSoftware-ConfiguringJDKVersions)
    *   [Overriding JDK Selection](#BuildingTerracottaSoftware-OverridingJDKSelection)
        *   [For compiling classes and running class main() method or running DSO server:](#BuildingTerracottaSoftware-Forcompilingclassesandrunningclassmain()methodorrunningDSOserver:)
        *   [For running non-container tests:](#BuildingTerracottaSoftware-Forrunningnon-containertests:)
        *   [For running container tests:](#BuildingTerracottaSoftware-Forrunningcontainertests:)
*   [The Eclipse Plugin](#BuildingTerracottaSoftware-TheEclipsePlugin)

Building Terracotta Software
----------------------------

For versions 3.5.x and earlier, Terracotta uses a custom build system, called tcbuild, that utilizes JRuby, Ant, and LeafCutter to build the distribution. JRuby and LeafCutter are downloaded automatically so it is not necessary to have them installed in order to build. You will need to run tcbuild to download project dependencies before you'll be able to compile in Eclipse. Just run: `$ ./tcbuild resolve_dependencies` from the `code/base` subdirectory of your enlistment.

Requirements
------------

To build from source you must have the following installed:

*   A Java 1.4 SDK ([Download](http://java.sun.com/j2se/1.4.2/download.html))
*   JDK 5 ([Download](http://java.sun.com/javase/downloads/index_jdk5.jsp))
*   JDK 6 ([Download](http://java.sun.com/javase/downloads/index.jsp))
*   The Ant build tool (version 1.6.5 is required, [Download](http://ant.apache.org/bindownload.cgi "ant.apache.org/bindownload.cgi"))
*   Tomcat 5.0.28 (to run distributed container tests) ([Download](http://tomcat.apache.org/download-55.cgi#5.0.28))

Windows users building a source release version 2.2.1 or earlier must also have [Cygwin](http://www.cygwin.com/) installed and have the Cygwin bin directory in their PATH. This dependency on Cygwin has been removed in trunk.

Once all of the required tools are installed, you must set the following environment variables:

| 
Environment Variable

 | 

Value

 |
| --- | --- |
| 

ANT\_HOME

 | 

The root directory of the Ant installation on your system, e.g. **`C:\apache-ant-1.6.5`** or **`/usr/local/ant`**

 |
| 

JAVA\_HOME\_14

 | 

The root directory of the Java 1.4 SDK on your system, e.g. **`C:\j2sdk1.4.2_13`** or **`/usr/local/j2sdk1.4.2_13`**

 |
| 

JAVA\_HOME\_15

 | 

The root directory of JDK 5 on your system, e.g. **`C:\jdk1.5.0_15`** or **`/usr/local/jdk1.5.0_15`**

 |
| 

JAVA\_HOME\_16

 | 

The root directory of JDK 6 on your system, e.g. **`C:\jdk1.6.0_05`** or **`/usr/local/jdk1.6.0_05`**

 |

For additional options for selecting the JDKs to use for building and testing, see [Configuring JDK Versions](#BuildingTerracottaSoftware-ConfiguringJDKVersions).

Windows users should be sure to escape the space and backslash symbols when setting the above environment variables:

export JAVA\_HOME\_16=C:\\\\Program\\ Files\\\\Java\\\\jdk1.6.0\_05
export JAVA\_HOME\_15=C:\\\\Program\\ Files\\\\Java\\\\jdk1.5.0\_09
export JAVA\_HOME\_14=C:\\\\j2sdk1.4.2\_13

Building From Source
--------------------

To build the distribution from source, the tcbuild tool is used. tcbuild is located in the code/base directory, and should be executed from within that directory. To use tcbuild, change to the code/base directory:

cd code/base

The most commonly used targets are shown in the table below.

| 
Target

 | 

Description

 |
| --- | --- |
| 

compile

 | 

Compiles all source code for all modules. The compiled modules will be in the code/base/build directory, with one directory per module.

 |
| 

check

 | 

Executes all tests for all modules.

 |
| 

create\_package

 | 

Assembles and packages a kit. The package will be placed in the code/base/build/dist directory.

 |

For a full list of build system targets see [tcbuild Targets](#BuildingTerracottaSoftware-tcbuildTargets).

### Examples

To compile all of the modules, make sure you are in the `code/base` directory, and then execute

./tcbuild compile

To create a package file, execute

./tcbuild create\_package DSO

Windows users should use tcbuild.bat instead of tcbuild.

Running Tests
-------------

The Terracotta source tree includes a comprehensive suite of automated unit and system tests. The `tcbuild` tool provides several targets for executing all or some of the tests included in the test suite.

| 
Target

 | 

Description

 |
| --- | --- |
| 

check

 | 

Runs all tests

 |
| 

check\_one

 | 

Runs a single named test where <test\_name> is the class  
name of the Java class containing the test to run. This  
target will scan all modules to find the test.  
  
Example: tcbuild check\_one AssertTest

 |
| 

check\_file

 | 

Runs set of tests specified in a given file.  
Each line of the file can be blank, a comment (starting with '#'),  
or the fully qualified class name of the Java class containing a test.  
  
Example: tcbuild check\_file tests\_to\_run.txt

 |
| 

check\_short

 | 

Runs all tests in files called **`<modulename>/tests.unit.lists.short`** and **`<modulename>/tests.system.lists.short`**

 |

For a full list of build system targets see [tcbuild Targets](#BuildingTerracottaSoftware-tcbuildTargets).

Some tests, such as those in the `dso-container-tests` module, require a web container such as Tomcat or WebLogic to run. To run these tests, you must have a suitable web container installed and tell tcbuild where to find it, which you do by setting the TC\_CONTAINER\_HOME environment variable. For example, if you wish to use Tomcat as the web container for the tests and Tomcat is installed at **`/opt/tomcat`** then you will need to set the TC\_CONTAINER\_HOME environment variable to **`/opt/tomcat`**.

tcbuild Targets
---------------

### Syntax

'tcbuild' works much like 'ant', in that it basically accepts a set of targets to run. However, it's a bit more sophisticated:

*   You can set various build properties by simply including 'name=value' pairs on the command line; you can put these anywhere on the command line - anything that looks like 'name=value' gets set and stripped out before the command line is interpreted as a set of targets.
*   These properties can **also** be set in code/base/build-config.global and code/base/build-config.local; the command line overrides build-config.local, which, in turn, overrides build-config.global. Only properties that should be set for everybody go in build-config.global (which is checked in); you can put properties that you want to be set for you and you alone in build-config.local.
*   Some targets take arguments, which you simply list on the command line after that target. For example, 'check\_one' takes the name of a test to run; you can do 'check\_one FooTest check\_one BarTest' to run these two tests back-to-back.
*   Some targets take a variable number of arguments; this means that this target must be the last target on the command line, and anything after it (other than name=value pairs) will be interpreted as an argument. For example, 'run\_class' runs a class (its first argument); anything after its first argument will be passed on to that class as normal command-line arguments.

### Targets

#### Basics

*   **clean** removes absolutely everything the buildsystem can build - classes, test results, boot JARs, and so on. (This consists of nuking the code/base/build directory.)

*   **clean\_tests** removes all testruns (results of tests, temp files, etc.); it does ~not~ remove any compiled class files, however.

*   **compile** compiles all the code. This is an incremental compile, so it should be reasonably quick once you've compiled everything once. (Any remaining delays are just in the 'javac' Ant task comparing the .class and .java files' timestamps, not in the buildsystem itself.)

*   **show\_modules** dumps out a list of all the modules the system knows about. (This is basically the processed version of what's in 'modules.def.yml'.)

#### Testing

*   **check\_one** runs a single test. It takes one argument - the name of the test to run. Just give it the class name itself (e.g., 'FooTest'), without .java or .class on the end, without a package prefix. It'll find it.

*   **check** runs ~all~ the tests. However, it obeys several different properties (name=value pairs on the command line):
    *   check\_modules (a.k.a. 'check\_module'): a comma-delimited list of the modules to run tests from. If you leave this off, it runs tests from all modules.
    *   check\_module\_groups (a.k.a. 'check\_module\_group'): if (and only if!) 'check\_modules' is not specified, a list of the "module groups" to run tests from. You can find module groups at the bottom of 'modules.def.yml'. This is just a succinct way of specifying large numbers of modules at once.
    *   check\_types (a.k.a. 'check\_type'): A comma-separated list of the types of tests to run - unit, system, or both ('unit,system').
    *   check\_patterns (a.k.a. 'check\_pattern'): A comma-separated list of the patterns of test names to run. By default, this is '<asterisk<Test'.
    *   test\_timeout: The timeout for ~each~ individual JUnit test case (i.e., test class), in seconds. Overrides any other value that is set.
    *   jvmargs: Additional JVM arguments to pass to the VM that runs the test, separated by commas.

*   **check\_file** runs a set of tests as specified in a file. It takes one argument - the name of the file of tests to run. Each line of the file can be blank, a comment (starting with '#'), or the name of a test. You can include the package, or leave it off if you want (e.g., either 'com.tc.util.AssertTest' or just 'AssertTest' works); don't include .class or .java on the end.

*   **check\_list** runs a set of tests for each test subtree, as specified in a file called '<modulename</tests.(unit|system).lists.<listname>' for each module. For example, if you create files called 'common/tests.unit.lists.foo' and 'legacy-test-tree/tests.system.lists.foo', then 'tcbuild check\_list foo' will run the tests named in those files. For subtrees (tests.unit or tests.system) that don't have these files, no tests will be run.

*   **check\_short** runs 'check\_list short' - in other words, runs all tests in files called '<modulename>/tests.unit.lists.short' and '<modulename>/tests.system.lists.short'. The idea is to limit these files to a fairly short-running, 'sanity check' set of tests for each tree - so developers can run a reasonably-quick set of tests before checking in.

*   **Implicit targets**: 'check\_<groupname>', where <groupname> is the name of a 'module group' defined at the end of the 'modules.def.yml' file, will run all tests on all modules in that group. 'check\_<groupname>_unit' will run all unit tests on modules in that group, and 'check_<groupname>\_system' will run all system tests on modules in that group. Hence, if you create a group called 'foo' in 'modules.def.yml', suddenly you magically have 'check\_foo', 'check\_foo\_unit', and 'check\_foo\_system' groups.

*   **recheck**: This is a particularly useful target - it re-runs whichever tests failed on your last test run. (You can set the 'testrun' parameter - e.g., 'testrun=testrun-0015' - to run tests that failed on a different test run instead, if you want.)

*   **show\_test\_results** takes one argument, the name of a test run (e.g., 'testrun-0007') or just 'latest'. It dumps out to your screen a very nice analysis of exactly what failed in that test run, and why. (This is the same analysis you get at the end of the test run itself, in fact.)

#### Testing in Eclipse or Other Tools

*   **check\_show** takes two arguments, a module name and a test type. (For example, 'tcbuild check\_show legacy-test-tree unit'.) It will do absolutely all work that the buildsystem does to prepare for running tests on a particular subtree - things like building boot JARs, creating appropriate test-data directories, and so on - and then prints to the screen all the properties it will set, CLASSPATH it will use, current working directory it will use, and so on. This can be used to figure out how to run tests in any arbitrary tool, since it shows you all the settings you need.

*   **check\_prep** works exactly like **check\_show**, except that it ~also~ drops a file on your CLASSPATH (more precisely, in build/simulator/src.classes, though this may change at any time) that specifies some system properties. The test code (specifically, TestConfigObject) looks for this file and sets these system properties. As such, you can use this to run tests in Eclipse: just run 'tcbuild check\_prep <modulename> <test-type>' first, and then run your tests in Eclipse - no other work needed. Note that this is the **ONLY** supported way of doing this from Eclipse; it ensures that everything stays maintainable into the future, among other things.

(Also note that certain test trees are configured to, for example, run with a DSO boot JAR active; 'check\_show' and 'check\_prep' will tell you about this, and tell you how to configure Eclipse so that it behaves identically to the buildsystem, but they can't actually do it themselves since Eclipse kicks off the test JVM itself, before our code has any control. Some tests may run fine anyway, but, for others, you may need to change Eclipse's idea of the JVM arguments and other options it should use when kicking off that test.)

#### Running Servers, Classes, etc.

*   **run\_class** takes at least one argument - the name of a class to run. Any further arguments are passed to that class. (Currently, this class name must be fully-qualified, although this may change in the future to make things easier). You can also specify the following properties (name=value pairs on the command line):
    *   module: Sets the module to run against (for the CLASSPATH, JVM version, and so on). Defaults to 'legacy-test-tree'.
    *   subtree: Sets the subtree to run against (for the CLASSPATH, native libraries, and so on). Defaults to 'src'.
    *   jvm: Sets the JVM to run against; this can be '1.4', '1.5', or a fully-qualified path to a valid Java home.
    *   jvmargs: Sets the JVM arguments to use; this should be a comma-separated list. Defaults to no extra JVM arguments.
    *   with\_dso: if you set this to 'true', the process will get DSOized - a boot JAR will get built for it, a Terracotta home set up (a license file and 'tc-config.xml' file put there), 'tc.config' set to point to the config file, and 'tc.classpath' set to point to the appropriate classes. You can actually override any of these things by simply adding the appropriate arguments to 'jvmargs'; for example, if you define a JVM argument that looks like '-Xbootclasspath...', we won't add a second one pointing to the boot JAR. In this way you can pretty much do anything you want. (If you want to change the boot JAR, just run this once, then edit the tc-config.xml file appropriately, then run it again. The boot JAR will pick up the changes the second time around.)

*   **run\_server** runs the Terracotta server. The 'jvmargs' parameter can be used to set JVM arguments for it, if you need any extra ones.

#### Miscellaneous

*   **show\_classpath** takes two arguments - the name of the module and the name of a subtree. (For example, 'tcbuild show\_classpath common test.unit'.) This prints to your screen the CLASSPATH that gets used when you run code against that tree. This can be useful for running classes or other tools outside of Eclipse or the buildsystem itself.

*   **create\_boot\_jar** takes one argument - the type of JVM to create a boot JAR for. This can be '1.4', '1.5', or the fully-qualified path to a Java home. It will create a boot JAR for this JVM, and tell you where it left it.

*   **show\_config** dumps out the various configuration parameters that the build system itself is building with.

Source Modules
--------------

The Terracotta source tree is divided into several different modules.

A module is a set of source code, compiled with a particular version of the JVM, along with supporting test infrastructure code, unit tests, and system (a.k.a., acceptance, functional, etc.) tests.

Modules can also be dependent upon other modules; this dependency is expressed explicitly. The buildsystem is very careful to only compile and run modules with exactly their dependencies included in the CLASSPATH, so it's impossible to introduce dependencies that you haven't explicitly declared.

Note that modules are compiled in a particular order, as defined in `modules.def.yml`.

### Subtrees

A module is divided into subtrees. Each module can currently have up to four subtrees:

*   src: The main source for the module. Modules dependent upon this module will get compiled against this code as well.
*   tests.base: Test infrastructure code for the module. Test subtrees (tests.base, tests.unit, tests.system) in modules dependent upon this module will get compiled against this code as well.
*   tests.unit: Unit tests for the module. Modules dependent upon this module will NOT have access to this code.
*   tests.system: System tests for the module. Modules dependent upon this module will NOT have access to this code.

These subtrees are compiled (and run) with certain dependencies: 'src' gets compiled only against the 'src' subtrees of modules this module is declared to be dependent upon. 'tests.base' gets compiled against the 'src' subtree of this module, as well as the 'src' and 'tests.base' subtrees of the modules this module is declared to be dependent upon. 'tests.unit' and 'tests.system' get compiled against the 'src' and 'tests.base' subtrees of this module, as well as of the modules this module is declared to be dependent upon.

The code for each subtree goes in that exact directory; for example, a class 'com.tc.Foo' in the 'tests.base' subtree of module 'bar' would go in 'code/base/bar/tests.base/com/tc/Foo.java'.

Configuring JDK Versions
------------------------

By default, the Terracotta build tool, tcbuild, uses a Java 1.4 SDK and either JDK 5 or JDK 6 for compiling code and running tests. The use of a Java 1.4 SDK helps to ensure that certain modules within the Terracotta source retain compatibility with Java 1.4.

tcbuild needs to be told where to find the JDK installations that it uses, which you do by setting certain _configuration elements_. A configuration element is a name-value pair that can be specified in any of the following ways:

1.  On the tcbuild command-line
2.  In the buildconfig file for a module
3.  In build-config.local
4.  In build-config.global
5.  As an environment variable, optionally prefixed with TC\_

Environment variables are the preferred option for specifying the configuration elements related to the JDK version.

To tell tcbuild where to find the Java 1.4 SDK installations, use either the **`J2SE_14`** or the **`JAVA_HOME_14`** configuration element. To tell tcbuild where to find JDK 5 or JDK 6, use any of the following: **`J2SE_15`**, **`JAVA_HOME_15`**, **`JAVASE_16`**, or **`JAVA_HOME_16`**.

### Overriding JDK Selection

Here is an overview of how JDKs are handled by tcbuild:

The file jdk.def.yml contains the specifications for the JDKs used by tcbuild. Currently it contains a specification for J2SE-1.4 and J2SE-1.5. Any JDK listed in this file MUST be installed for tcbuild to work. Therefore, it is still required to have both a 1.4 SDK and either JDK 5 or JDK 6 installed.

The default JDK to use for a module is specified in modules.def.yml.

You can override the default JDK for compiling/testing/running by specifying a **`jdk=`** option on the command-line or in a buildconfig file. The value of the **`jdk=`** option may be either the name of a JDK specified in jdk.def.yml, or the path to a Java installation. For example:

./tcbuild check\_one SomeTest jdk=/usr/local/jdk1.6.0

You can override the JDK used for running tests only (allowing the default JDK to be used for compilation and other purposes) by specifying the **`tests-jdk=`** option on the command-line or in a buildconfig file. As for the **`jdk=`** option, the **`tests-jdk=`** option may be either the name of a JDK specified in jdk.def.yml, or the path to a Java installation.

The search order for selecting the appropriate JDK is as follows:

##### For compiling classes and running class main() method or running DSO server:

1.  Command-line **`jdk=`** option
2.  Subtree buildconfig **`jdk=`** option
3.  modules.def.yml **`jdk:`** attribute

##### For running non-container tests:

1.  Command-line **`tests-jdk=`** option
2.  Subtree buildconfig **`tests-jdk=`** option
3.  Command-line **`jdk=`** option
4.  Subtree buildconfig **`jdk=`** option
5.  modules.def.yml **`jdk:`** attribute

##### For running container tests:

1.  Command-line **`tests-jdk=`** option
2.  Subtree buildconfig **`tests-jdk=`** option
3.  Command-line **`jdk=`** option
4.  Subtree buildconfig **`jdk=`** option
5.  appservers.yml entry for active appserver
6.  modules.def.yml **`jdk:`** attribute

In any case, an error is raised if the JDK selected is incompatible with the task being performed. For example, if the **`tests-jdk=`** option is set to a JDK 5 installation, but the app server is compatible only with Java 1.4, tcbuild will refuse to use the JDK 5 and the build will fail.

The Eclipse Plugin
------------------

For using Eclipse with Terracotta software, see \[Working with Eclipse|http://www.terracotta.org/confluence/display/docs/DSO+Eclipse+Plugin+Guide  
\].

Document generated by Confluence on Oct 05, 2021 15:59

[Atlassian](http://www.atlassian.com/)