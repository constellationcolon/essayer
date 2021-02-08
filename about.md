---
title: About
layout: base
department: essayer
---

<link rel="stylesheet" type="text/css" href="assets/css/about.css">

<div id="platforms">

{% for platform in site.data.platforms %}
<p>
  <span class="platform">{{platform.name}}</span>
  <a class="handle"
     target="_blank"
     rel="noopener noreferrer"
     href="{{platform.href_fmt | replace: '<handle>', platform.handle}}">
    {{platform.handle}}
  </a>
</p>
{% endfor %}

</div>