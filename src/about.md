---
layout: page
title: About Me
permalink: /about/
categories: navbar
---

I'm a dude with a website.

<div>
    <ul class="social-media-list">
        {% if site.github_username %}
        <li>
        {% include icon-github.html username=site.github_username %}
        </li>
        {% endif %}

        {% if site.twitter_username %}
        <li>
        {% include icon-twitter.html username=site.twitter_username %}
        </li>
        {% endif %}
    </ul>
</div>

<div>
    <ul class="contact-list">
        <li>Email: <label class="text-success">{{ site.email }}</label></li>
    </ul>
</div>