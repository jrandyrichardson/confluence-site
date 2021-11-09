---
title:  Third Party Licenses  
lang: en
layout: page
keywords:
space: release
sidebar: lb2_sidebar
permalink: /display/release/Third+Party+Licenses
summary:
---

Terracotta Third Party License Files
====================================

### BigMemory

* [4.4 Third Party License File](/download/attachments/29557169/TAB_4.4.0_terms.pdf)
* [4.3 Third Party License File](/download/attachments/29557169/TAB_4.3.10_terms.pdf)
* [4.2 Third Party License File](/download/attachments/29557169/4.2.0_THIRD_PARTY_LICENSE.pdf)
* [4.1.0 Third Party License File](/download/attachments/29557169/4.1.9_THIRD_PARTY_LICENSE.pdf)
* [4.0.0 Third Party License File](/download/attachments/29557169/Third Party License File Big Memory 4.pdf)
* [3.7.0 Third Party License File](/download/attachments/29557169/3.7.0_THIRD_PARTY_LICENSE.pdf)
* [3.6.0 Third Party License File](/download/attachments/29557169/3.6.0_THIRD_PARTY_LICENSE.pdf)
* [3.5.3 Third Party License File](/download/attachments/29557169/3.5.3_THIRD_PARTY_LICENSE.pdf)
* [3.5.2 Third Party License File](/download/attachments/29557169/3.5.2_THIRD_PARTY_LICENSE.pdf)

### Terracotta

* [10.15 Third Party License File](/download/attachments/29557169/TDB_10.15_terms.pdf)
* [10.11 Third Party License File](/download/attachments/29557169/TDB_10.11_terms.pdf)
* [10.7 Third Party License File](/download/attachments/29557169/TDB_10.7_terms.pdf)

### Terracotta DB

* [10.3 Third Party License File](/download/attachments/29557169/TDB_10.3_THIRD_PARTY_TERMS.pdf)
* [10.2 Third Party License File](/download/attachments/29557169/10.2_THIRD_PARTY_LICENSE.pdf)
* [10.1 Third Party License File](/download/attachments/29557169/Terracotta_DB_10.1_terms.pdf)

### Terracotta Ehcache

* [10.5 Third Party License File](/download/attachments/29557169/TDB_10.5_terms.pdf)
* [10.3 Third Party License File](/download/attachments/29557169/TCE_10.3_THIRD_PARTY_TERMS.pdf)
* [10.2 Third Party License File](/download/attachments/29557169/TCE_10.2_THIRD_PARTY_LICENSE.pdf)
* [10.1 Third Party License File](/download/attachments/29557169/Terracotta_Ehcache_10.1_terms.pdf)
* [10.0 Third Party License File](/download/attachments/29557169/Terracotta Ehcache_10.0_THIRD_PARTY_LICENSE.pdf)

Terracotta Server Open Source Third Party License Files
=======================================================

* [4.3.0 Third Party License Files](/download/attachments/29557169/Terracotta_4.3_TPL.pdf)
* [Terracotta Ehcache Opensource Version 3.0 ](/download/attachments/29557169/Terracotta Ehcache Opensource v3.0.pdf)
* [Terracotta Ehcache Opensource Version 3.1](/download/attachments/29557169/Terracotta Ehcache Opensource v3.1.pdf)
* [Terracotta Ehcache Opensource Version 3.4](/download/attachments/29557169/Terracotta_Ehcache_Opensource_v3.4_terms.pdf)


All Attachments:
------------

<ol markdown="1">
{% assign attachments = site.static_files | sort: "name" %}
{% for file in attachments -%}
{% if file.extname == ".pdf" and file.path contains "29557169" -%}
<li><a href="{{ site.baseurl }}{{ file.path }}">{{ file.name }}</a></li> 
{%- endif %}
{%- endfor %}
</ol>