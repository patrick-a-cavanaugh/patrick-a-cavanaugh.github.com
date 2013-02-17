---
layout: page
title: Homepage of Patrick Cavanaugh
---
{% include JB/setup %}

## Most recent posts

<ul>
  {% for post in site.posts %}
  <li>
    <span>{{ post.date | date: "%B %e, %Y" | escape }}</span> <a href="{{ post.url }}">{{ post.title|escape }}</a>
  </li>
  {% endfor %}
</ul>
