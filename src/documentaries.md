---
layout: page
title: Documentaries
permalink: documentaries/
---

{% assign alphabetArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" | split: "" %}
{% assign titles = site.documentaries | map: "title" | sort %}

<div class="container-fluid">
  <div class="row">
    <div class="col-md-12">    
      <ul class="list-unstyled">
      {% for letter in alphabetArray  %}
        {% assign newLetter = true %}
        {% for doc in titles %}
          {% assign titleLetters = doc | split: "" %}
          {% if newLetter == true %}
            {% assign newLetter = false %}
            <li>{{letter}}</li>
          {% endif %}
          {% if letter == titleLetters[0] %}
            <li>{{ doc }}</li>
          {% endif %}
        {% endfor %}  
      {% endfor %}
      </ul>
    </div>
  </div>
</div>