---
layout: page
title: Homepage of Patrick Cavanaugh
---
{% include JB/setup %}

## Most recent posts

<ul>
  {% for post in site.posts %}
  <li>
<span>{{ post.date | date: "%B %e, %Y" }}</span> <a href="{{ post.url }}">{{ post.title }}</a>
  </li>
  {% endfor %}
</ul>
