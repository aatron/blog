---
layout: default
title: Avoid These Documentaries
---

{% assign numberArray = "0123456789" | split: "" %}
{% assign alphabetArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" | split: "" %}
{% assign docs = site.documentaries | sort: "title" %}

<div class="row">
    {% assign emptyLetter = "" %}
    {% assign sweetLetter = aDoc.first.title | truncate:1,"" %}
    {% for alphaLetter in alphabetArray  %}
        {% include docList.html letter=alphaLetter recommend="No" %}
    {% endfor %}
</div>