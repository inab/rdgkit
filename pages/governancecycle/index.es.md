---
layout: page
lang: es
title: "Ciclo de Gobernanza de Datos"
permalink: /pages/governancecycle/
sidebar: data_governance_cycle
has_children: true
nav_order: 1
toc: false
---

Consulta las fases del ciclo de gobernanza de los datos de investigación:

{% for item in site.data.sidebars[page.sidebar].subitems %}
- [{{ item.title }}]({{ item.url | relative_url }})
{% endfor %}
