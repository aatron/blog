---
layout: minimal
title: "Blog Posts"
permalink: /blog/
---

{% assign currentYear = 0 %}
{% for post in site.posts %}
    {% assign postYear = post.date | date: "%Y" %}
    {% if currentYear != postYear %}
## {{postYear }}
        {% assign currentYear = postYear %}
    {% endif %}

* <time class="list-date" datetime="{{ post.date | date_to_xmlschema }}" pubdate>{{ post.date | date: "%B %d - " }}</time>[{{ post.title | xml_escape }}]({{ post.url | prepend: site.baseurl }})
{% endfor %}