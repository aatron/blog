---
layout: page
title: About
permalink: /about/
---

This site is a work in progress to create the perfect system.

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
        <li>Email: <a href="mailto:{{ site.email }}">{{ site.email }}</a></li>
    </ul>
</div>