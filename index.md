---
title: ESSAYER
layout: base
---

{% for post in site.posts %}
{% unless post.path contains "_drafts" %}
<div class="post">
  <a href="{{ post.url | prepend: site.baseurl }}">
  {{ post.title | upcase }}
  </a>
  <p>{{ post.blurb }}</p>
</div>
{% endunless %}
{% endfor %}