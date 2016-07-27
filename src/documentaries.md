---
layout: page
title: Documentaries
permalink: documentaries/
---

{% assign numberArray = "0123456789" | split: "" %}
{% assign alphabetArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" | split: "" %}
{% assign docs = site.documentaries | sort: "date" %}

<div class="container-fluid">
  <div class="row">
    <div class="col-md-12">
      <div class="list-group">
        <div class="list-group-background">#</div>
        <ul class="list-unstyled">
        {% for letter in numberArray %}
          {% for doc in docs %}
            {% assign titleLetters = doc.title | split: "" %}
            {% if letter == titleLetters[0] %}
              {% if doc.reviewAvailable == "Yes" %}
                <a class="post-link" href="{{ doc.url | prepend: site.baseurl }}">{{ doc.title }}</a>
              {% else %}
                <li>{{ doc.title }}</li>
              {% endif %}
            {% endif %}
          {% endfor %}
        {% endfor %}
        </ul>
      </div>

      {% for letter in alphabetArray  %}
      <div class="list-group">
        <div class="list-group-background">{{ letter }}</div>
        <ul class="list-unstyled">
          {% assign newLetter = true %}
          {% for doc in docs %}
            {% assign titleLetters = doc.title | split: "" %}
            {% if newLetter == true %}
              {% assign newLetter = false %}
            {% endif %}
            
            {% if letter == titleLetters[0] %}
              {% if doc.reviewAvailable == "Yes" %}
                <a class="post-link" href="{{ doc.url | prepend: site.baseurl }}">{{ doc.title }}</a>
              {% else %}
                <li>{{ doc.title }}</li>
              {% endif %}
            {% endif %}
          {% endfor %}
        </ul>
      </div>
      {% endfor %}
    </div>
  </div>
      </div>
</div>