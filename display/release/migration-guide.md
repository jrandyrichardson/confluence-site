---
title:  migration guide  
lang: en
layout: page
keywords:
space: release
sidebar: lb2_sidebar
permalink: /display/release/migration+guide
summary:
---

Quartz 1.8.x to Quartz 2.0 Migration Guide
==========================================

(As Of Beta 1, November 2010)

IN-PROGRESS DRAFT

If you find errors, or encounter difficulties that you wish had been covered by this document, please help the entire community by notifying the Quartz team of the needed improvements by posting a message in the forums.

This document outlines how to migrate an application using Quartz Scheduler 1.8.x to version 2.0 - it does not document every change or new feature in version 2.0. For information related to what has changed with Quartz 2.0 please refer to the [What's New In Quartz 2.0](What%27s+new+in+Quartz+2.0) document, or refer to the 2.0 release notes the in project's Jira issue tracker.

Making Changes Common To All Quartz Setups
------------------------------------------

The Quartz Scheduler API was significantly overhauled with the 2.0 release. Effort was made to balance making real improvements with the desire to have minimal effort to migrate existing applications to usage of version 2.0. Not every change is explicitly covered below - but those that aren't should be very easy to figure out on your own using your IDE's code-comletion offerings, or a quick look at the 2.0 JavaDoc.

##### Quartz Configuration (properties files)

This is the really easy part: No changes are required, existing properties files should work just fine.

##### Scheduler API

As you proceed toward making your code build again, remember to refer to JavaDoc for full reference of the API.

##### Typed Collections

API methods that return (or take as parameters) arrays now return (or take) typed collections. For example, rather than getJobGroupNames(): String\[\] we now have getJobGroupNames(): List<String>. After updating your project code's dependency to be upon the Quartz 2.0 library, the compiler will find and indicate errors at all of your usages of arrays rather than Lists, Sets, etc. Many applications will have very few occurrences to fix, while others with have many dozens - depending upon the nature of the application and its usages of the Quartz API.

Example old code:

         String[] triggerGroups = sched.getTriggerGroupNames();

New code:

        List<String> triggerGroups = sched.getTriggerGroupNames();

##### Job and Trigger Identification

Jobs and Triggers are now identified by keys, JobKey and TriggerKey respectively. Keys are composed of two String properties: name and group. As such, methods that once took name and group as two parameters, now take a key as a single parameter. Your IDE's compiler will identify all occurrences that need to be fixed. Note that JobKey and TriggerKey have static methods on them for easily creating keys, consider using static imports to make your code cleaner (to avoid code that looks like this: new TriggerKey("name", "group")). In some cases the new usage of keys will make your code a tiny bit longer, but in other cases it greatly simplifies things (e.g. passing/receiving one argument rather than two). Also note that group does not need to be specified (just leave the parameter off) when creating a key if you are not making usage of groups.

Much of this can be done with search-and-replace.

Example old code:

String[] triggersInGroup = sched.getTriggerNames("myGroup");
Trigger trg = sched.getTrigger("myTriggerName", "myGroup");
sched.unscheduleJob("myOtherTriggerName", null);
trigger.getName();
trigger.getJobName();
JobDetail myJob = sched.getJobDetail("myJobName", "myGroup");

New code:

import static org.quartz.TriggerKey.*;
import static org.quartz.JobKey.*;
...
List<TriggerKey> triggersInGroup = sched.getTriggerNames("myGroup");
Trigger trg = sched.getTrigger(triggerKey("myTriggerName", "myGroup"));
sched.unscheduleJob(triggerKey("myOtherTriggerName"));
trigger.getKey().getName();
trigger.getJobKey().getName();
JobDetail myJob = sched.getJobDetail(jobKey("myJobName", "myGroup"));

##### Constructing Jobs and Triggers (the new, preferred way - see next section for easier migration)

A new builder-based API provides a Domain Specific Language (DSL) for constructing job and trigger definitions. Usage of static imports makes your code nice and clean when using the new DSL. Aside from being a less cumbersome API, the new builders have provided a means for removing/hiding many methods that were once on various classes (such as Trigger) that were not meant to be called by the client code.

Please take note of related new classes (that you should use static imports from): TriggerBuilder, JobBuilder, SimpleScheduleBuilder, CronScheduleBuilder, CalendarIntervalSchedulerBuilder, DateBuilder.

Example of old code:

{% highlight java %}
JobDetail job = new JobDetail("myJob", "myGroup");
job.setJobClass(MyJobClass.class);
job.setDurability(true);
job.setRequestsRecovery(true);
job.getJobDataMap().put("someKey", "someValue");
 
SimpleTrigger trg = new SimpleTrigger("myTrigger", null);
trg.setStartTime(new Date(System.currentTimeMillis() + 10000L));
trg.setPriority(6);
trg.setJobName("myJob");
trg.setJobGroup("myGroup");
trg.setRepeatCount(SimpleTrigger.REPEAT_INDEFINITELY);
trg.setRepeatInterval(30000L);
{% endhighlight %}

New code:

{% highlight java %}
import static org.quartz.TriggerBuilder.*;
import static org.quartz.JobBuilder.*;
import static org.quartz.DateBuilder.*;
import static org.quartz.SimpleScheduleBuilder.*;
...
JobDetail job = newJob(MyJobClass.class)
        .withIdentity("myJob", "myGroup")
        .storeDurably()
        .requestRecovery()
        .usingJobData("someKey", "someValue")
        .build();
 
Trigger trg = newTrigger()
        .withIdentity("myTrigger")
        .startAt(futureDate(10, IntervalUnit.SECONDS))
        .withPriority(6)
        .forJob(job)
        .withSchedule(simpleSchedule()
                .withRepeatIntervalInSeconds(30)
                .repeatForever())
        .build();
{% endhighlight %}

##### Constructing Jobs and Triggers (the easy but not recommended way - see above for preferred)

If you want to get going quicker, without re-writing code to use the new builder/DSL API, you can make some quick changes to existing code to make the compiler happy. Trigger and JobDetail are now interfaces, but implementations still exists that you can "sneakily" reference. Note that this is only recommended as a temporary way to get your code working quickly, and you should plan on eventually converting your code to use the new API.

Rather than importing and using

org.quartz.SimpleTrigger, org.quartz.CronTrigger, and org.quartz.JobDetail

change your code to import and use

 
org.quartz.impl.triggers.SimpleTriggerImpl, org.quartz.impl.triggers.CronTriggerImpl, and org.quartz.impl.JobDetailImpl

(A similar pattern can be used for other concrete trigger types).

This can be accomplished with search-and-replace.

Example of old code:

{% highlight java %}
JobDetail job = new JobDetail("myJob", "myGroup");
...
SimpleTrigger trg = new SimpleTrigger("myTrigger", null);
{% endhighlight %}

New code:

{% highlight java %}
JobDetailImpl job = new JobDetailImpl("myJob", "myGroup");
...
SimpleTriggerImpl trg = new SimpleTriggerImpl("myTrigger", null);
{% endhighlight %}

##### Changes Related To Listeners (JobListener, TriggerListener, SchedulerListener)

Significant changes were made to the way listeners are registered with the scheduler. There is no longer a distinction between "global" and "non-global" listeners. Jobs and Triggers are no longer configured with a list of names of non-global listeners that should be notified of events related to them. Instead all listeners are registered with one or more Matcher rules that select which jobs/triggers the listener will be notified of events for.

Additionally, all methods related to the management of listeners were removed from the Scheduler interface and were placed on a new ListenerManager interface.

Most Quartz-using applications do not make use of listeners, but if yours does, you'll have some work to do to make the compiler happy.

See the new org.quartz.impl.matchers package for the complete set of available Matcher implementations.

Example of old code:

{% highlight java %}
scheduler.addGlobalJobListener(myGlobalJobListener);
scheduler.addJobListener(myJobListener);
...
job.addJobListener(myJobListener.getName());
...
{% endhighlight %}

New code:

{% highlight java %}
import static org.quartz.impl.matchers.GroupMatcher.*;
...
// no matcher == match all
scheduler.getListenerManager().addJobListener(myGlobalJobListener);
// match (listen to) all jobs in given group
scheduler.getListenerManager().addJobListener(myJobListener, matchGroupEquals("foo"));
{% endhighlight %}

##### Changes Related To TriggerUtils

Methods on TriggerUtils related to construction of Date instances have been moved to DateBuilder and can be made easy use of via static imports. Dates can then easily and cleanly be constructed and used in-line with the new trigger builder DSL.

Methods on TriggerUtils related to construction of Trigger instances have been moved to SimpleScheduleBuilder and CronScheduleBuilder and can be made easy use of via static imports.

Example of old code:
{% highlight java %}
Date startDate = TriggerUtils.getEvenHourDate(new Date()); // next hour, straight up
Trigger t = TriggerUtils.makeDailyTrigger(10,45); // every day at 10:45
t.setStartTime(startDate);
{% endhighlight %}

New code:
{% highlight java %}
import static org.quartz.DateBuilder.*;
import static org.quartz.TriggerBuilder.*;
import static org.quartz.CronScheduleBuilder.*;
...
Trigger t = newTrigger()
        .withSchedule(cronScheduleDaily(10,45)) // every day at 10:45
        .startAt(evenHourDate(new Date()) / next hour, straight up
        .build();
{% endhighlight %}

