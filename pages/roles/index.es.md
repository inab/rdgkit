---
layout: page
lang: es
title: "Roles"
permalink: /pages/roles/
sidebar: your_role
has_children: true
nav_order: 3
toc: false
---

Consulta las funciones y responsabilidades de los roles de gobernanza de datos:

{% for item in site.data.sidebars[page.sidebar].subitems %}
- [{{ item.title }}]({{ item.url | relative_url }})
{% endfor %}
