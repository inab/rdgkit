---
layout: page
lang: es
title: "Herramientas y Recursos"
permalink: /pages/resources/
sidebar: tools_resources
has_children: true
nav_order: 4
toc: false
---

Consulta las herramientas y los recursos para la gobernanza de datos:

{% for item in site.data.sidebars[page.sidebar].subitems %}
- [{{ item.title }}]({{ item.url | relative_url }})
{% endfor %}
