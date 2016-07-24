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
      <ul class="list-unstyled">
      <li>#</li>
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

      {% for letter in alphabetArray  %}
        {% assign newLetter = true %}
        {% for doc in docs %}
          {% assign titleLetters = doc.title | split: "" %}
          {% if newLetter == true %}
            {% assign newLetter = false %}
            <li>{{letter}}</li>
          {% endif %}
          
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
  </div>
</div>