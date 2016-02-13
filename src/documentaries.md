---
layout: page
title: Documentaries
permalink: /documentaries/
---

<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/2.0.0-beta.2/angular2.min.js" />



<table>
    <thead>
        <th>Title</th>
        <th>Recommendation</th>
        <th>Source</th>
        <th>Date Added</th>
        <th>Watched?</th>
    </thead>
    <tbody>
{% for doc in site.data.documentaries %}
        <tr>
            <td>{{doc.title}}</td>
            <td>{{doc.recommendation}}</td>
            <td>{{doc.source}}</td>
            <td>{{doc.dateAdded}}</td>
            <td><input type="checkbox" /></td>
        </tr>
{% endfor %}
    </tbody>
</table>
