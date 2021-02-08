---
title: ESSAYER
layout: base
---

{% include nav.html department="essayer" landing=true %}
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