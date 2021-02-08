---
layout: base
title: ZETTELKASTEN
---

{% include nav.html department="zettelkasten" landing=true %}
{% assign all_zettel = site.zettel | reverse %}
{% for zettel in all_zettel %}
  <span class="zettel-id">{{ zettel.id | split: "/" | last }}</span>
  <a href="{% link {{ zettel.path }} %}">{{ zettel.title }}</a>
{% endfor %}