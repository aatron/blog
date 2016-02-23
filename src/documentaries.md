---
layout: page
title: Documentaries
permalink: /documentaries/
---

<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-animate.js"></script>
<script src="/js/app/app.module.js"></script>
<script src="/js/app/controllers/documentaries.controller.js"></script>
<script src="/js/app/services/data.service.js"></script>
<script src="/js/app/directives/filterTextbox.directive.js"></script>

<table>
    <thead>  
        <th></th>
        <th>Title</th>
        <th>Recommendation</th>
        <th>Source</th>
        <th>Date Added</th>
        <th>Watched?</th>
    </thead>
    <tbody>
{% for doc in site.documentaries %}
        <tr>
            <td>{{doc.date < Date.today - 30}}</td>
            <td>{{doc.title}}</td>
            <td>{{doc.recommendation}}</td>
            <td>{{doc.sources.length}}</td>
            <td>{{doc.date}}</td>
            <td><input type="checkbox" /></td>
        </tr>
{% endfor %}
    </tbody>
</table>

<div ng-app="demoApp">
    <div ng-view class="slide-animation"></div>
   
    <ul>
        <li ngFor="#doc of documentaries">{{doc.title}}</li>
    </ul>
</div>