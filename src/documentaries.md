---
layout: page
title: Documentaries
permalink: documentaries/
---

<!--
<script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.js"></script>
<script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
<script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-animate.js"></script>
<script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-resource.js"></script>
-->
<script src="https://code.angularjs.org/2.0.0-beta.9/angular2-polyfills.js"></script>
<script src="https://code.angularjs.org/2.0.0-beta.9/Rx.umd.js"></script>
<script src="https://code.angularjs.org/2.0.0-beta.9/angular2-all.umd.dev.js"></script>

<script type='text/javascript' src="/js/app/app.module.js"></script>
<script type='text/javascript' src="/js/app/controllers/documentaries.controller.js"></script>
<script type='text/javascript' src="/js/app/controllers/demo.controller.js"></script>
<script type='text/javascript' src="/js/app/services/data.service.js"></script>
<script type='text/javascript' src="/js/app/directives/filterTextbox.directive.js"></script>
<script type='text/javascript' src="/js/libs/angular/ng-infinite-scroll.min.js"></script>

<!--
<div ng-app="demoApp">
    <div ng-view class="slide-animation"></div>
</div>
-->

<div ng-app='myApp' ng-controller='MyAppController'>
  <div infinite-scroll='loadMore()' infinite-scroll-distance='2'>
    <img ng-repeat='image in images' ng-src='http://placehold.it/225x250&text={{image}}'>
  </div>
</div>