---
layout: base
title: ZETTELKASTEN
---

{% for zettel in site.zettel %}
  <span class="zettel-id">{{ zettel.id | split: "/" | last }}</span>
  <a href="{% link {{ zettel.path }} %}">{{ zettel.title }}</a>
{% endfor %}