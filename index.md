---
title: Des essais
layout: base
---

{% for post in site.posts %}
<div style="margin-bottom: 2em;">
  <a href="{{ post.url | prepend: site.baseurl }}">{{ post.title | upcase }}</a>
  <p>{{ post.blurb }}</p>
</div>
{% endfor %}