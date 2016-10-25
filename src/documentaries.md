---
layout: page
title: Documentaries
permalink: documentaries/
---

{% assign numberArray = "0123456789" | split: "" %}
{% assign alphabetArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" | split: "" %}
{% assign docs = site.documentaries | sort: "title" %}

<div class="row">
    <div class="list-group-doc">
        <div class="list-group">
            <div class="list-group-background">#</div>
        </div>
        {% for number in numberArray  %}
            {% include docList.html letter=number %}
        {% endfor %}
    </div>
    {% for alphaLetter in alphabetArray  %}
        <div class="list-group-doc">
            <div class="list-group">
                <div class="list-group-background">{{ alphaLetter }}</div>
            </div>
            {% include docList.html letter=alphaLetter %}
        </div>
    {% endfor %}
</div>