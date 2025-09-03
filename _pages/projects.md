---
permalink: /projects/
layout: single
title: "Projects"
author_profile: false
---

{% assign items = site.projects | sort: 'date' | reverse %}

A selection of highlighted projects.

<ul class="taxonomy__index">
{% for project in items %}
  <li>
    <a href="{{ project.url | relative_url }}">
      <strong>{{ project.title }}</strong><br/>
      <small>{{ project.role | default: project.type }}</small>
    </a>
  </li>
{% endfor %}
</ul>
