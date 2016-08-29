---
layout: page
title: Documentaries
permalink: documentaries/
---

{% assign numberArray = "0123456789" | split: "" %}
{% assign alphabetArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" | split: "" %}
{% assign docs = site.documentaries | sort: "title" %}

<div class="container-fluid">
  <div class="row">
    <div class="col-md-12">
      <div class="list-group">
        <div class="list-group-background">#</div>
        <ul class="list-unstyled">
        {% for letter in numberArray %}
          {% for doc in docs  %}
            {% assign titleLetters = doc.title | split: "" %}
            {% if letter == titleLetters[0] %}
              {% if doc.reviewAvailable == "Yes" %}
                {% if doc.recommendation != 'Yes' %}<s>{% endif %}<a class="post-link" href="{{ doc.url | prepend: site.baseurl }}">{{ doc.title }}</a>{% if doc.recommendation != 'Yes' %}</s>{% endif %}
              {% else %}
                <li>{% if doc.recommendation != 'Yes' %}<s>{% endif %}{{ doc.title }}{% if doc.recommendation != 'Yes' %}</s>{% endif %}</li>
              {% endif %}
            {% endif %}
          {% endfor %}
        {% endfor %}
        </ul>
      </div>
      {% assign emptyLetter = "" %}
      {% assign sweetLetter = aDoc.first.title | truncate:1,"" %}
      {{ sweetLetter }}
      {% for alphaLetter in alphabetArray  %}
          {% include docList.html letter=alphaLetter %}
      {% endfor %}
    </div>
  </div>
      </div>
</div>