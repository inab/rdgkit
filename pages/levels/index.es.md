---
layout: page
lang: es
title: "Niveles de Gobernanza"
permalink: /pages/levels/
sidebar: multilevel_data_governance_model
has_children: true
nav_order: 2
toc: false
---

Explora los niveles de gobernanza de datos dentro de una organización:

{% for item in site.data.sidebars[page.sidebar].subitems %}
- [{{ item.title }}]({{ item.url | relative_url }})
{% endfor %}
