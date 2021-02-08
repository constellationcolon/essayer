---
title: STACKS
layout: base
department: stacks
---

{% include nav.html department="stacks" landing=true %}
<div class="essai">
  <h1>Librarian's Picks</h1>
  <div class="main-text">
    <div class="stacks-bibliography">
    {% bibliography --query @*[stacks] %}
    </div>
  </div>
</div>
