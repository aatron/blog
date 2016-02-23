((): void => {
    var app = angular.module('demoApp', ['ngRoute', 'ngAnimate']);

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