---
title:  FAQ Terracotta General
lang: en
layout: page
keywords:
space: current
sidebar: lb2_sidebar
permalink: /display/release/FAQ
summary:
---

Terracotta General FAQ
----------------------

The Terracotta General FAQ answers non-technical questions about Terracotta. Send any general questions not answered by this FAQ to info@terracotta.org. For technical questions, check the [Technical FAQ](Technical+FAQ) or post your questions on our [forums](http://forums.terracotta.org).

The Terracotta FAQ is divided into the following subject areas:

* TOC
{:toc}

### General Questions

#### What is the difference between Terracotta open source software projects and Terracotta enterprise products?

See [here](http://www.terracotta.org/open-source) for details.

#### Where do I find detail and pricing information for your commercial products?

Please [email](mailto:sales@terracottatech.com) or [contact](http://www.terracotta.org/contact) us for pricing.

#### What is the best way to get started with Terracotta software?

The best way is to first learn about our various [products](http://www.terracotta.org/products), download the software, and then try out the samples provided in the kit.

#### Can I skip the learning track and go straight to working with the software?

The product samples allow you to work directly with Terracotta software. However, if you want to proceed directly to integrating and testing a Terracotta product with your application, see the [Terracotta Product Documentation](http://www.terracotta.org/documentation).

#### What platforms does Terracotta software run on? Which application stacks does Terracotta support?

Terracotta is designed to work with as broad an array of platforms, JVMs and application server versions as possible. Supported platforms are listed in the [Release and Platform Compatibility Information](Home) section of the documentation.

#### What is the Terracotta Client?

The Terracotta Client is functionality in a Java library that operates inside your JVM that enables clustering. When your JVM starts and code is called that initializes Terracotta, the Terracotta Client automatically connects to the Terracotta Server Array to engage clustering services such as the lock manager, object manager, and memory manager. The Terracotta Client is utilized by Ehcache, Quartz, Web Sessions, the Terracotta Toolkit, and by DSO (Distributed Shared Objects).

#### What is the Terracotta Server Array?

The Terracotta Server Array is a set of one or more processes that coordinate data sharing among all Terracotta Clients in the cluster. Each Terracotta Server Array process is a simple Java application that runs directly on the JVM (ie without an application server or container). The Terracotta Server Array is designed to provide maximal High Availability and Scalability. See the [Terracotta Server Array product documentation](http://www.terracotta.org/documentation/server-arrays) for more details.

#### What is the Terracotta Toolkit?

The Terracotta Toolkit is a powerful library designed for developers working on scalable applications, frameworks, and software tools. The Terracotta Toolkit provides a simple set of APIs, which themselves are used to create Terracotta products. Supported APIs include concurrent maps, cyclic barriers, locks, counters, and queues. The Toolkit is designed to be platform independent and runs on any Java 1.5 or 1.6 JVM without requiring boot-jars, agents, or container-specific code. See the [Terracotta Toolkit product documentation](http://www.terracotta.org/documentation/toolkit-intro) for more details.

#### What is Terracotta DSO?

Terracotta DSO (Distributed Shared Objects) is the lowest level mechanism by which Java objects can be clustered with Terracotta. It is considered an advanced topic. The majority of scale, performance and data clustering use cases can be better solved using the well established APIs provided with Ehcache, Web Sessions, Quartz and the Terracotta toolkit, which abstract the lower-level workings of Terracotta from the user. Note: DSO is JVM and container dependent and requires a boot-jar for byte-code manipulation. See the [DSO documentation](http://www.terracotta.org/confluence/display/docs/Home) for more details.

#### What is the difference between a typical installation (also called "express") and a DSO installation (also called "custom")?

There are two ways to install the Terracotta products: The typical (express) installation and the DSO (custom). The express installation is recommended for applications with straight-forward clustering and coherence requirements. For example, the express installation of Distributed Ehcache is recommended for clustering a cache only. The custom installation is _only_ for users who also require DSO features such as Terracotta roots, clustering of Java objects (for example, custom POJOs), preservation of object identity, or integration of other technologies using Terracotta Integration Modules (TIMs).

* * *

### Support Questions

#### Do you offer support?

Yes. Support is a key feature of our enterprise product offerings. We also offer a number of other flexible packages. See the [support](http://www.terracotta.org/support) page for details.

#### How do I open a support ticket?

Terracotta customers can either call or email our support line, or log into our support portal to report an issue. Issues can also be reported through the Terracotta community issue-tracking system.

#### Do you offer professional services?

Yes. We have a team of services engineers who have deep expertise with Terracotta products, enterprise Java development, and deploying large-scale java applications. See the [services](http://www.terracotta.org/services) page for details.

#### Do you have a network of consulting partners?

Yes. See the [partners page](http://www.terracotta.org/company/partners) for a list of Terracotta consulting partners.

#### Can I get training on Terracotta products?

Yes. We offer customizable on-site training and also have a schedule of regular training courses in the Americas, Europe and Asia. See the [training](http://www.terracotta.org/training) information page. [Contact](http://www.terracotta.org/contact) us for more information.

#### What kind of support options do you provide for ISVs?

We offer a 7x24 custom support option for our ISV partners. Each support offering is customized to meet the ISV current and future support needs. For more information please [email](mailto:info@terracottatech.com) or [contact](http://www.terracotta.org/contact) us.

#### Where can I find out more about the license you use?

See the [Licensing FAQ](http://www.terracotta.org/legal/licensing-faq) .


