((): void => {
    var app = angular.module('demoApp', ['ngRoute', 'ngAnimate']);
    var scrollModule = angular.module('myApp');

    app.config(['$routeProvider', ($routeProvider) => {
        $routeProvider.when('/documentaries/',
        {
            controller: 'demoApp.DocumentariesController',
            templateUrl: '/js/app/views/documentaries.html',
            controllerAs: 'vm'
        })
        .when('/documentaries',
        {
            controller: 'demoApp.DocumentariesController',
            templateUrl: '/js/app/views/documentaries.html',
            controllerAs: 'vm'
        })
        .when('/',
        {
            controller: 'demoApp.DocumentariesController',
            templateUrl: '/js/app/views/documentaries.html',
            controllerAs: 'vm'
        });
    }]);
})();